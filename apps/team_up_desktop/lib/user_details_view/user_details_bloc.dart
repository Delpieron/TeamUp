import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:library_pkg/library_pkg.dart';
import 'package:local_storage_pkg/local_storage_pkg.dart';
import 'package:rest_client_pkg/rest_client_pkg.dart';

import 'package:team_up_desktop/constants.dart';

part 'user_details_bloc.freezed.dart';

part 'user_details_event.dart';

part 'user_details_state.dart';

final _getIt = GetIt.I;

class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc(UserFriendStatus friendStatus) : super(UserDetailsState.initial(friendStatus)) {
    on<_OnUserGameCategoriesLoad>(_loadUserGamesCategories);
    on<_OnChangeUserFriendStatus>(_changeUserFriendStatus);
  }

  final RestClientProvider _restApi = _getIt.get<RestClientProvider>()..init();
  final LocalStorageProvider _localStorage = _getIt.get<LocalStorageProvider>()..init();

  Future<String?> getCurrentUserToken() async =>
      _localStorage.loadData(Constants.authTokenKey, (items) => items as String);

  Future<void> _loadUserGamesCategories(_OnUserGameCategoriesLoad event, Emitter<UserDetailsState> emit) async {
    final response = await _restApi.get<dynamic>(
      '${Constants.apiBaseURL}Game/Categories',
      fromJson: (element) {
        return (element as List<dynamic>).map((e) {
          return e as String;
        }).toList();
      },
    );
    if (response.result == null) {
      return;
    }
    final result = response.result as List<String>;
    emit(
      state.copyWith(gameCategories: result),
    );
  }

  Future<void> _changeUserFriendStatus(_OnChangeUserFriendStatus event, Emitter<UserDetailsState> emit) async {
    final token = await getCurrentUserToken();
    if (event.action == UserFriendActionStatus.sendAddFriendRequest) {
      final result = await _addUserToFriends(event.userId, token!);
      if (result) {
        emit(
          state.copyWith(
            type: StateType.loaded,
            userFriendActionStatus: UserFriendStatus.friendRequestSend,
          ),
        );
      }
      return;
    }
    final result = await _deleteUserFromFriends(event.userId, token!);
    if (result) {
      emit(
        state.copyWith(
          type: StateType.loaded,
          userFriendActionStatus: UserFriendStatus.friendDeleted,
        ),
      );
    }
  }

  Future<bool> _deleteUserFromFriends(String userId, String token) async {
    final response = await _restApi.delete<dynamic>(
      '${Constants.apiBaseURL}User/Friends/$userId',
      headers: {'accept': 'text/plain', 'Authorization': 'Bearer $token'},
    );
    return response.statusCode == RestStatusCodes.ok;
  }

  Future<bool> _addUserToFriends(String userId, String token) async {
    final response = await _restApi.post<dynamic>(
      '${Constants.apiBaseURL}User/Friends',
      headers: {'accept': 'text/plain', 'Authorization': 'Bearer $token', 'Content-Type': 'application/json'},
      data: '{[$userId]}',
    );
    return response.statusCode == RestStatusCodes.ok;
  }
}
