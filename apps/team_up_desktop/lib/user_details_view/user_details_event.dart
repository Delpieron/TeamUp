part of 'user_details_bloc.dart';

@freezed
class UserDetailsEvent with _$UserDetailsEvent {
  const factory UserDetailsEvent.onUserGameCategoriesLoad() = _OnUserGameCategoriesLoad;
  const factory UserDetailsEvent.onChangeUserFriendStatus(UserFriendActionStatus action, String userId) =
      _OnChangeUserFriendStatus;
}
