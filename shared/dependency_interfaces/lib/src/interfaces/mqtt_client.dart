import 'dart:async';

import 'package:dependency_interfaces/src/base/disposable.dart';

abstract interface class MqttClient implements Disposable {
  Future<bool> connect({
    required String server,
    required String clientId,
    int port = 1883,
    int maxConnectionAttempts = 3,
    int keepAlivePeriod = 0,
    String? username,
    String? password,
  });

  void disconnect();

  Stream<T> subscribe<T>(String topic, T Function(dynamic json) fromJson);

  FutureOr<int?> publish<T>(String topic, T message);
}
