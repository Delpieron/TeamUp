import 'dart:async';

import 'package:background_worker_pkg/src/background_stream_controller.dart';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, BackgroundWorker, Logger, MessageWrapper, Service, WrappedEmptyResult, WrappedResult;
import 'package:flutter/foundation.dart';

abstract class WorkerBase implements dep.BackgroundWorker {
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

  @override
  void runCommand<S>(String serviceName, String command, S param) {
    _sendCallback(dep.MessageWrapper<void, S>('${serviceName}_$command', serviceName, command, param));
  }

  @override
  Future<void> runVoid<S>(String serviceName, String command, S param) {
    return _runForFuture<void, S>('${serviceName}_$command', serviceName, command, param);
  }

  @override
  Future<T> runForResult<T extends Object?, S>(String serviceName, String command, S param) {
    return _runForFuture<T, S>('${serviceName}_$command', serviceName, command, param);
  }

  @override
  Future<void> registerService(
    String serviceName,
    dep.Service Function(Map<String, dep.Service>, dep.Logger?) initializer,
  ) async {
    final instanceName = dep.BackgroundCommand.initInstance + serviceName;
    await _runForFuture<void, dep.Service Function(Map<String, dep.Service>, dep.Logger?)>(
      instanceName,
      serviceName,
      serviceName,
      initializer,
    );
  }

  Future<T> _runForFuture<T, S>(String serviceCommand, String serviceName, String command, S param) {
    final completer = Completer<T>();
    _resultCallbacks[serviceCommand] = (dep.WrappedResult<Object?> result) {
      _resultCallbacks.remove(result.commandId);
      completer.complete(result.unwrap<T>());
    };
    _sendCallback(dep.MessageWrapper<T, S>(serviceCommand, serviceName, command, param));
    return completer.future;
  }

  @override
  Stream<T> runForStream<T extends Object?, S>(String serviceName, String command, S param) {
    final serviceCommand = '${serviceName}_$command';
    final handler = BackgroundStreamController<T>();

    _resultCallbacks[serviceCommand] = (dep.WrappedResult<Object?> result) {
      if (result is dep.WrappedEmptyResult) {
        _resultCallbacks.remove(result.commandId);
        handler.close();
      } else {
        handler.add(result.unwrap<T>());
      }
    };

    _sendCallback(dep.MessageWrapper<T, S>(serviceCommand, serviceName, command, param));
    return handler.stream;
  }

  @override
  @mustCallSuper
  Future<void> dispose() async {
    await _resultSubscription?.cancel();
    _resultSubscription = null;
    _resultCallbacks.clear();
  }
}
