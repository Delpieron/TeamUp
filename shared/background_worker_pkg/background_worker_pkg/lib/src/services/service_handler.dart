import 'dart:async';

import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, Logger, MessageWrapper, Service, WrappedResult;
import 'package:flutter/foundation.dart';

class ServiceHandler {
  final Map<String, dep.Service> _services = {};

  Future<void> onCommand(
    dep.MessageWrapper<Object?, Object?> messageWrapper,
    void Function(dep.WrappedResult<Object?>) callback,
  ) async {
    if (messageWrapper.serviceCommand.startsWith(dep.BackgroundCommand.initInstance)) {
      final initializer = messageWrapper.arg;
      if (initializer is dep.Service Function(Map<String, dep.Service>, dep.Logger?)) {
        final logger = _services[dep.BackgroundCommand.loggerBackground] as dep.Logger?;
        _services[messageWrapper.serviceName] = initializer(_services, logger);
      }
    } else {
      final service = _services[messageWrapper.serviceName];
      if (service != null) {
        await service.handleCommand(messageWrapper, callback);
        return;
      }
      final notFoundMessage = 'Service not found: ${messageWrapper.serviceName}';
      final logger = _services[dep.BackgroundCommand.loggerBackground] as dep.Logger?;
      if (logger != null) {
        logger.w(notFoundMessage);
      } else if (kDebugMode) {
        print(notFoundMessage);
      }
    }
    callback(messageWrapper.wrapEmpty());
  }
}
