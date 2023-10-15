import 'dart:async';
import 'dart:io';

import 'package:comprehensive_utils/comprehensive_utils.dart';
import 'package:connection_checker_pkg/src/enums/connection_status.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dependency_interfaces/dependency_interfaces.dart' as dep show ConnectionChecker;
import 'package:rxdart/rxdart.dart';

final class ConnectionCheckerProvider implements dep.ConnectionChecker {
  ConnectionCheckerProvider([String host = 'example.com']) : _host = host {
    _subscription = _connectivity.onConnectivityChanged
        .startWith(ConnectivityResult.none)
        .doOnData(_connectivitySubject.add)
        .map(_isNetworkConnected)
        .asyncMap(_checkStatus)
        .listen(_connectionStatusSubject.add);
  }

  final String _host;
  final Connectivity _connectivity = Connectivity();
  final BehaviorSubject<ConnectivityResult> _connectivitySubject = BehaviorSubject<ConnectivityResult>();
  final DistinctSubject<ConnectionStatus> _connectionStatusSubject = DistinctSubject<ConnectionStatus>();
  late final StreamSubscription<ConnectionStatus> _subscription;

  @override
  DistinctValueStream<ConnectionStatus> get connectionStatusStream => _connectionStatusSubject.stream;

  @override
  ConnectionStatus? get connectionStatus => _connectionStatusSubject.valueOrNull;

  @override
  bool get isNetworkConnected => _isNetworkConnected(_connectivitySubject.value);

  bool _isNetworkConnected(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.ethernet:
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
        return true;
      default:
        return false;
    }
  }

  @override
  Future<ConnectionStatus> checkInternetAccess({String? host}) => _checkStatus(isNetworkConnected, host);

  Future<ConnectionStatus> _checkStatus(bool networkConnected, [String? host]) async {
    if (!networkConnected) {
      return ConnectionStatus.networkMissing;
    }
    try {
      final result = await InternetAddress.lookup(host ?? _host);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return ConnectionStatus.unrestricted;
      }
      return ConnectionStatus.restricted;
    } on SocketException catch (_) {
      return ConnectionStatus.none;
    }
  }

  @override
  Future<void> dispose() async {
    await _subscription.cancel();
    await _connectivitySubject.close();
    await _connectionStatusSubject.close();
  }
}
