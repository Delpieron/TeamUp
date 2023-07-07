import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:get_it/get_it.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';

import 'package:team_up_desktop/constants.dart';

import 'package:team_up_desktop/models/login_response.dart';

final _getIt = GetIt.I;

class RegistrationBloc {
  final ConnectionCheckerProvider _conncetionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()
    ..init();
  final LocalStorageProvider _localStorage = _getIt.get<LocalStorageProvider>()
    ..init();

  bool isInternetConnected() => _conncetionChecker.isNetworkConnected;

  Future<void> onRegisterRequest() async {
    final result = await _restApi.post<void>(
      '${Constants.apiBaseURL}/api/v1/Login',
      data: {
        'email': 'string2',
        'username': 'string2',
        'password': 'string2',
        'age': 0,
        'startHour': 0,
        'endHour': 0,
        'friendsList': 'string',
        'gamesList': 'string'
      },
    );
    if (result.statusCode != RestStatusCodes.ok) {
      return;
    }
    // final response = result.result! as RestResponse;

    // return _localStorage.storeData(Constants.authTokenKey, response.token);
  }
}

