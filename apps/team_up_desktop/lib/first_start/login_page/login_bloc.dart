import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';

import 'package:team_up_desktop/constants.dart';

import 'package:team_up_desktop/models/login_response.dart';

final _getIt = GetIt.I;

class LoginBloc {
  final ConnectionCheckerProvider _conncetionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();
  final LocalStorageProvider _localStorage = _getIt.get<LocalStorageProvider>()..init();

  bool isInternetConnected() => _conncetionChecker.isNetworkConnected;

  Future<bool> onLoginRequest() async {
    final result = await _restApi.post<dynamic>(
      '${Constants.apiBaseURL}/api/v1/Login',
      data: {'email': 'string2', 'password': 'string2'},
      fromJson: (element) => LoginResponse.fromJson(element as Map<String, Object?>),
    );
    if (result.statusCode != RestStatusCodes.ok) {
      return false;
    }
    final response = result.result! as LoginResponse;
    return _localStorage.storeData(Constants.authTokenKey, response.token);
  }

  Future<void> getToken() async {
    final a = await _localStorage.loadData<String>(
      Constants.authTokenKey,
      (element) => element as String,
    );
    print(a);
  }
}

// _restApi.get<List<String>>(
// '${Constants.apiBaseURL}/api/v1/Game/Categories',
// fromJson: (element) => (element as Iterable).map((e) {
// print(e);
// return '';
// }).toList(),
// );
