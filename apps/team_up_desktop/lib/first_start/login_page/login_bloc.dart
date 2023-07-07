import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:get_it/get_it.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';

import 'package:team_up_desktop/Constants.dart';

final _getIt = GetIt.I;

class LoginBloc {
  final ConnectionCheckerProvider _conncetionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();

  bool isInternetConnected() => _conncetionChecker.isNetworkConnected;

  Future<RestResponse<List<String>>> onLoginRequest() async {
    final a = _restApi.post<List<String>>(
      '${Constants.apiBaseURL}/api/v1/Login',
      data: {'email': 'adam@adam.pl', 'password': 'zaq1@WSX'},
      // data: {'email=adam@adam.pl', 'password=zaq1@WSX'},
      fromJson: (element) {
        print(element);
        final a = element as Map<String, dynamic>;
        final b = a
            .entries
            .where((element) => element.key == 'token')
            .map((e) => e.value.toString()).toList();
        print(a);
        print(b);
        return b;
      },
    );
    return a;
  }
}

class Dupa {
  final email = 'adam@adam.pl';
  final password = 'zaq1@WSX';
}
// _restApi.get<List<String>>(
// '${Constants.apiBaseURL}/api/v1/Game/Categories',
// fromJson: (element) => (element as Iterable).map((e) {
// print(e);
// return '';
// }).toList(),
// );
