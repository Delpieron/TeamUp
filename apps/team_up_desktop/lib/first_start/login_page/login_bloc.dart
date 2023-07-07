import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:get_it/get_it.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';

import 'package:team_up_desktop/Constants.dart';

final _getIt = GetIt.I;

class LoginBloc {
  final ConnectionCheckerProvider _conncetionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();

  bool isInternetConnected() => _conncetionChecker.isNetworkConnected;

  Future<Response> onLoginRequest() async {
    final result = await _restApi.post<dynamic>(
      '${Constants.apiBaseURL}/api/v1/Login',
      data: {'email': 'adam@adam.pl', 'password': 'zaq1@WSX'},
      fromJson: (element) => Response.fromJson(element as Map<String, Object?>),
    );
    return result.result! as Response;
  }
}

class Dupa {
  final email = 'adam@adam.pl';
  final password = 'zaq1@WSX';
}

class Response {
  Response({required this.username, required this.email, required this.token});

  factory Response.fromJson(Map<String, Object?> json) => Response(
        username: json['username']! as String,
        email: json['email']! as String,
        token: json['token']! as String,
      );

  final String username;

  final String email;

  final String token;
}
// _restApi.get<List<String>>(
// '${Constants.apiBaseURL}/api/v1/Game/Categories',
// fromJson: (element) => (element as Iterable).map((e) {
// print(e);
// return '';
// }).toList(),
// );
