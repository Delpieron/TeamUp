import 'dart:async';

import 'package:dependency_interfaces/dependency_interfaces.dart' as dep
    show BackgroundCommand, Logger, MessageWrapper, Service, WrappedResult;
import 'package:flutter/foundation.dart';

final class ServiceHandler {
  final Map<String, dep.Service> _services = {};

  Future<void> onCommand(
    dep.MessageWrapper<Object?, Object?> messageWrapper,
    void Function(dep.WrappedResult<Object?>) callback,
  ) async {
    if (messageWrapper.command == dep.BackgroundCommand.registerService) {
      if (_services[messageWrapper.serviceName] != null) {
        _reportError('Service ${messageWrapper.serviceName} is already registered');
      }
      final initializer = messageWrapper.arg;
      if (initializer is dep.Service Function(Map<String, dep.Service>)) {
        _services[messageWrapper.serviceName] = initializer(_services);
      }
    } else {
      final service = _services[messageWrapper.serviceName];
      if (service != null) {
        await service.handleCommand(messageWrapper, callback);
        return;
      }
      _reportError('Service ${messageWrapper.serviceName} not found');
    }
    callback(messageWrapper.wrapEmpty());
  }

  void _reportError(String message) {
    final logger = _services[dep.BackgroundCommand.loggerBackground] as dep.Logger?;
    logger?.w(message);
    if (kDebugMode) {
      throw Exception(message);
    }
  }
}
