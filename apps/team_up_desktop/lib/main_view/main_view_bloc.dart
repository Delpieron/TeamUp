import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';
import 'package:team_up_desktop/constants.dart';
import 'package:team_up_desktop/models/user/user.dart';

part 'main_view_bloc.freezed.dart';

part 'main_view_event.dart';

part 'main_view_state.dart';

final _getIt = GetIt.I;

class MainViewBloc extends Bloc<MainViewEvent, MainViewState> {
  MainViewBloc({required this.token}) : super(MainViewState.initial()) {
    on<_OnLoadSuggestedFriends>(_loadSuggestedFriends);
    on<_OnLoadCurrentUser>(_loadCurrentUser);
  }

  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();

  final String? token;

  Future<void> _loadSuggestedFriends(_OnLoadSuggestedFriends event, Emitter<MainViewState> emit) async {
    final response = await _restApi.get<dynamic>(
      '${Constants.apiBaseURL}User/Recomended',
      headers: {'Authorization': 'Bearer $token'},
      fromJson: (element) {
        return (element as Iterable).map((e) {
          return User.fromJson(e as Map<String, Object?>);
        }).toList();
      },
    );
    if (response.result == null) {
      return;
    }
    final resultRecomended = response.result as List<User>;

    final responseUser = await _restApi.get<dynamic>(
      '${Constants.apiBaseURL}User/currentUser',
      headers: {'Authorization': 'Bearer $token'},
      fromJson: (element) {
        return User.fromJson(element as Map<String, Object?>);
      },
    );
    if (responseUser.result == null) {
      return;
    }
    final resultUser = responseUser.result as User;
    emit(
      state.copyWith(suggestedUsers: resultRecomended,currentUser: resultUser, type: StateType.loaded),
    );
  }

  Future<void> _loadCurrentUser(_OnLoadCurrentUser event, Emitter<MainViewState> emit) async {
    // final response = await _restApi.get<dynamic>(
    //   '${Constants.apiBaseURL}User/currentUser',
    //   headers: {'Authorization': 'Bearer $token'},
    //   fromJson: (element) {
    //     return User.fromJson(element as Map<String, Object?>);
    //   },
    // );
    // if (response.result == null) {
    //   return;
    // }
    // final result = response.result as User;
    // emit(
    //   state.copyWith(currentUser: result, type: StateType.loaded),
    // );
  }
}
