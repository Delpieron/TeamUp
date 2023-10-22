import 'dart:async';
import 'package:background_worker_pkg/src/workers/combine_worker_instance.dart';
import 'package:background_worker_pkg/src/workers/worker_base.dart';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep show BackgroundWorker, Service;
import 'package:flutter/services.dart';

final class BackgroundWorkerProvider implements dep.BackgroundWorker {
  BackgroundWorkerProvider._(this._worker);

  final WorkerBase _worker;

  static Future<BackgroundWorkerProvider> createAsync(RootIsolateToken isolateToken) async {
    final worker = await CombineWorkerInstance.createAsync(isolateToken);
    return BackgroundWorkerProvider._(worker);
  }

  @override
  Future<void> registerService(
    String serviceName,
    dep.Service Function(Map<String, dep.Service> services) initializer,
  ) {
    return _worker.registerService(serviceName, initializer);
  }

  @override
  void runCommand<S>(String serviceName, String command, S param) {
    _worker.runCommand(serviceName, command, param);
  }

  @override
  Future<void> runVoid<S>(String serviceName, String command, S param) {
    return _worker.runVoid(serviceName, command, param);
  }

  @override
  Future<T> runForResult<T extends Object?, S>(String serviceName, String command, [S? param]) {
    return _worker.runForResult(serviceName, command, param);
  }

  @override
  Stream<T> runForStream<T extends Object?, S>(String serviceName, String command, S param) {
    return _worker.runForStream<T, S>(serviceName, command, param);
  }

  @override
  Future<void> dispose() => _worker.dispose();
}
