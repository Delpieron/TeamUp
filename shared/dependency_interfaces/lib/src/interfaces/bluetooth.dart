import 'package:dependency_interfaces/src/base/instantiable.dart';

abstract class Bluetooth implements Instantiable {
  void startScan();

  void stopScan();

  void pairDevice();

  void connect();

  void disconnect();
}
