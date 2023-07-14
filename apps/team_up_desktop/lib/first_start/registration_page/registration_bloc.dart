import 'package:connection_checker_pkg/connection_checker_pkg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';
import 'package:team_up_desktop/constants.dart';
import 'package:team_up_desktop/models/game/game.dart';
import 'package:team_up_desktop/models/login_response.dart';

part 'registration_bloc.freezed.dart';

part 'registration_bloc_event.dart';

part 'registration_bloc_state.dart';

final _getIt = GetIt.I;

class RegistrationBloc extends Bloc<RegistrationBlocEvent, RegistrationBlocState> {
  RegistrationBloc() : super(RegistrationBlocState.initial()) {
    on<_OnGamesLoadRequest>(_onGamesLoadRequest);
    on<_OnGameItemSelected>(_onItemSelected);
  }

  Future<void> _onGamesLoadRequest(_OnGamesLoadRequest event, Emitter<RegistrationBlocState> emit) async {
    final response = await _restApi.get<dynamic>(
      '${Constants.apiBaseURL}Game',
      fromJson: (element) {
        return (element as Iterable).map((e) {
          return Game.fromJson(e as Map<String, Object?>);
        }).toList();
      },
    );
    if (response.result == null) {
      return;
    }
    final result = response.result as List<Game>;
    emit(
      state.copyWith(availableGames: result, type: StateType.loaded),
    );
  }

  void _onItemSelected(_OnGameItemSelected event, Emitter<RegistrationBlocState> emit) {
    final list = state.selectedGamesIds.toList();
    if (list.contains(event.id)) {
      list.remove(event.id);
    } else {
      list.add(event.id);
    }

    emit(
      state.copyWith(selectedGamesIds: list),
    );
  }

  final ConnectionCheckerProvider _connectionChecker = _getIt.get<ConnectionCheckerProvider>();
  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();
  final LocalStorageProvider _localStorage = _getIt.get<LocalStorageProvider>()..init();

  String _email = '';
  String _userName = '';
  String _password = '';
  int _age = 0;
  int _startHour = 0;
  int _endHour = 0;

  void rememberFirstPageData(String email, String userName, String password) {
    _email = email;
    _userName = userName;
    _password = password;
  }

  void rememberSecondPageData(int age, int startHour, int endHour) {
    _age = age;
    _startHour = startHour;
    _endHour = endHour;
  }

  bool isInternetConnected() => _connectionChecker.isNetworkConnected;

  Future<bool> onRegisterRequest() async {
    final result = await _restApi.post<dynamic>(
      '${Constants.apiBaseURL}Register',
      data: {
        'email': _email,
        'username': _userName,
        'password': _password,
        'age': _age,
        'startHour': _startHour,
        'endHour': _endHour,
        'gamesList': state.selectedGamesIds,
      },
      fromJson: (element) => LoginResponse.fromJson(element as Map<String, Object?>),
    );
    if (result.statusCode != RestStatusCodes.ok) {
      return false;
    }
    final response = result.result! as LoginResponse;
    //ToDo(kw): obsluzyc unauthorized kiedy wygasnie token.
    return _localStorage.storeData(Constants.authTokenKey, response.token);
  }
}
