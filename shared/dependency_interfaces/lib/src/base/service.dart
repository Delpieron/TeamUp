import 'package:dependency_interfaces/dependency_interfaces.dart';
import 'package:dependency_interfaces/src/base/disposable.dart';
import 'package:flutter/foundation.dart';

abstract base class Service implements Disposable {
  Service(this.services);

  final Map<String, Service> services;
  Logger? _logger;

  Logger? get logger => _logger ??= services[BackgroundCommand.loggerBackground] as Logger?;

  Future<void> handleCommand(
    MessageWrapper<Object?, Object?> messageWrapper,
    void Function(WrappedResult<Object?>) callback,
  );

  @override
  @mustCallSuper
  void dispose() => services.removeWhere((_, service) => service == this);
}
