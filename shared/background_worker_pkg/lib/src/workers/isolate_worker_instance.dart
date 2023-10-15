import 'dart:async';
import 'dart:isolate';

import 'package:background_worker_pkg/src/services/service_handler.dart';
import 'package:background_worker_pkg/src/workers/worker_base.dart';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep show MessageWrapper;
import 'package:flutter/services.dart';

final class IsolateWorkerInstance extends WorkerBase {
  IsolateWorkerInstance._(this._isolate, this._receivePort, super.sendCallback, super.resultStream);

  final Isolate _isolate;
  final ReceivePort _receivePort;

  static Future<IsolateWorkerInstance> createAsync(RootIsolateToken isolateToken) async {
    final ReceivePort receivePort = ReceivePort();
    final resultStream = receivePort.asBroadcastStream();
    final isolatePort = resultStream.firstWhere((element) => element is SendPort);

    return Future.microtask(() async {
      final isolate = await Isolate.spawn<_IsolateInitData>(
        _computeIsolate,
        _IsolateInitData(receivePort.sendPort, isolateToken),
      );
      return IsolateWorkerInstance._(isolate, receivePort, ((await isolatePort) as SendPort).send, resultStream);
    });
  }

  @override
  Future<void> dispose() async {
    _receivePort.close();
    _isolate.kill(priority: Isolate.immediate);
    await super.dispose();
  }
}

@pragma('vm:entry-point')
void _computeIsolate(_IsolateInitData initData) {
  BackgroundIsolateBinaryMessenger.ensureInitialized(initData.rootIsolateToken);
  final SendPort sendPort = initData.sendPort;
  final ServiceHandler handler = ServiceHandler();
  final receivePort = ReceivePort()
    ..listen((command) async {
      if (command is dep.MessageWrapper) {
        unawaited(handler.onCommand(command, sendPort.send));
      }
    });
  sendPort.send(receivePort.sendPort);
}

class _IsolateInitData {
  const _IsolateInitData(this.sendPort, this.rootIsolateToken);

  final SendPort sendPort;
  final RootIsolateToken rootIsolateToken;
}
