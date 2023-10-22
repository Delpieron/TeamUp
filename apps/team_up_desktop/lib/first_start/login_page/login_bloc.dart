import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';
import 'package:team_up_desktop/constants.dart';

final _getIt = GetIt.I;

class LoginBloc {
  final ConnectionCheckerProvider _connectionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>();
  final LocalStorageProvider _localStorage = _getIt.get<LocalStorageProvider>();

  bool isInternetConnected() => _connectionChecker.isNetworkConnected;

  Future<bool> onLoginRequest(String email, String password) async {
    final result = await _restApi.post<dynamic>(
      '${Constants.apiBaseURL}Login',
      data: {'email': 'kw@interia.pl', 'password': 'zaq1@WSX'},
      fromJson: (element) => LoginResponse.fromJson(element as Map<String, Object?>),
    );
    if (result.statusCode != RestStatusCodes.ok) {
      return true; //TODO(KW): true until server is on
    }
    final response = result.result! as LoginResponse;
    return _localStorage.storeData(Constants.authTokenKey, response.token);
  }
}
