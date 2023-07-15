part of 'user_details_bloc.dart';

@freezed
abstract class UserDetailsState with _$UserDetailsState {
  const factory UserDetailsState({
    required StateType type,
    required List<String> gameCategories,
    required UserFriendStatus userFriendActionStatus,
  }) = _UserDetailsState;

  factory UserDetailsState.initial(UserFriendStatus friendStatus) {
    return UserDetailsState(
      type: StateType.loaded,
      gameCategories: [],
      userFriendActionStatus: friendStatus,
    );
  }
}
