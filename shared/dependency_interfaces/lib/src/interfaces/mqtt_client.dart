import 'package:dependency_interfaces/src/base/disposable.dart';

abstract class MqttClient implements Disposable {
  Future<void> connect();
}
