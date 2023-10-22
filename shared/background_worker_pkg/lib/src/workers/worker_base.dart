import 'dart:async';
import 'dart:math';

import 'package:background_worker_pkg/src/background_stream_controller.dart';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, BackgroundWorker, MessageWrapper, Service, WrappedEmptyResult, WrappedResult;
import 'package:flutter/foundation.dart';

const int _intMaxValue = 1 << 32; // max allowed by Random.nextInt

abstract base class WorkerBase implements dep.BackgroundWorker {
  WorkerBase(this._sendCallback, Stream<Object?> resultStream) {
    _resultSubscription ??= resultStream.listen((event) {
      if (event is dep.WrappedResult<Object?>) {
        _resultCallbacks[event.commandId]?.call(event);
      }
    });
    _resultSubscription!.onDone(() {
      _resultSubscription?.cancel();
      _resultSubscription = null;
    });
  }

  final void Function(Object?) _sendCallback;
  final Map<String, void Function(dep.WrappedResult<Object?> data)> _resultCallbacks = {};
  StreamSubscription<Object?>? _resultSubscription;
  final Random _random = Random();

  @override
  void runCommand<S>(String serviceName, String command, S param) {
    _sendCallback(dep.MessageWrapper<void, S>(_getIdentifier(serviceName, command), serviceName, command, param));
  }

  @override
  Future<void> runVoid<S>(String serviceName, String command, S param) {
    return _runForFuture<void, S>(_getIdentifier(serviceName, command), serviceName, command, param);
  }

  @override
  Future<T> runForResult<T extends Object?, S>(String serviceName, String command, S param) {
    return _runForFuture<T, S>(_getIdentifier(serviceName, command), serviceName, command, param);
  }

  @override
  Future<void> registerService(
    String serviceName,
    dep.Service Function(Map<String, dep.Service> services) initializer,
  ) {
    return _runForFuture<void, dep.Service Function(Map<String, dep.Service> services)>(
      '${dep.BackgroundCommand.registerService}_$serviceName',
      serviceName,
      dep.BackgroundCommand.registerService,
      initializer,
    );
  }

  Future<T> _runForFuture<T, S>(String commandId, String serviceName, String command, S param) {
    final completer = Completer<T>();
    _resultCallbacks[commandId] = (dep.WrappedResult<Object?> result) {
      _resultCallbacks.remove(result.commandId);
      completer.complete(result.unwrap<T>());
    };
    _sendCallback(dep.MessageWrapper<T, S>(commandId, serviceName, command, param));
    return completer.future;
  }

  @override
  Stream<T> runForStream<T extends Object?, S>(String serviceName, String command, S param) {
    final commandId = _getIdentifier(serviceName, command);
    final handler = BackgroundStreamController<T>();

    _resultCallbacks[commandId] = (dep.WrappedResult<Object?> result) {
      if (result is dep.WrappedEmptyResult) {
        _resultCallbacks.remove(result.commandId);
        handler.close();
      } else {
        handler.add(result.unwrap<T>());
      }
    };

    _sendCallback(dep.MessageWrapper<T, S>(commandId, serviceName, command, param));
    return handler.stream;
  }

  String _getIdentifier(String serviceName, String command) {
    return '${serviceName}_${command}_${_random.nextInt(_intMaxValue)}';
  }

  @override
  @mustCallSuper
  Future<void> dispose() async {
    await _resultSubscription?.cancel();
    _resultSubscription = null;
    _resultCallbacks.clear();
  }
}
