import 'package:dependency_interfaces/src/base/instantiable.dart';

abstract class ConnectionChecker implements Instantiable {
  bool get isNetworkConnected;

  Future<Enum> checkInternetAccess({String? host});

  Stream<Enum> get connectionStatusStream;

  Enum? get connectionStatus;
}
