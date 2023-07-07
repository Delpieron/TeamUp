import 'package:dependency_interfaces/dependency_interfaces.dart';

abstract base class Service {
  Service(this.services, this.logger);

  final Map<String, Service> services;
  final Logger? logger;

  Future<void> handleCommand(
    MessageWrapper<Object?, Object?> messageWrapper,
    void Function(WrappedResult<Object?>) callback,
  );
}
