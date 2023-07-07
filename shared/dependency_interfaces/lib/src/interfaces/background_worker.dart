import 'dart:async';

import 'package:dependency_interfaces/dependency_interfaces.dart' show Logger, Service;
import 'package:dependency_interfaces/src/base/disposable.dart';

abstract class BackgroundWorker implements Disposable {
  void runCommand<S>(String serviceName, String command, S param);

  Future<void> runVoid<S>(String serviceName, String command, S param);

  Future<T> runForResult<T extends Object?, S>(String serviceName, String command, S param);

  Future<void> registerService(String serviceName, Service Function(Map<String, Service>, Logger?) initializer);

  Stream<T> runForStream<T extends Object?, S>(String serviceName, String command, S param);
}

class BackgroundWrapper {
  BackgroundWrapper(this._worker, this._serviceName);

  final BackgroundWorker _worker;
  final String _serviceName;

  void runCommand<S>(String command, [S? param]) => _worker.runCommand(_serviceName, command, param);

  Future<void> runVoid<S>(String command, [S? param]) => _worker.runVoid(_serviceName, command, param);

  Future<T> runForResult<T extends Object?, S>(String command, S param) =>
      _worker.runForResult<T, S>(_serviceName, command, param);

  Future<void> registerService(Service Function(Map<String, Service>, Logger?) initializer) {
    return _worker.registerService(_serviceName, initializer);
  }

  Stream<T> runForStream<T extends Object?, S>(String command, S param) {
    return _worker.runForStream<T, S>(_serviceName, command, param);
  }
}
