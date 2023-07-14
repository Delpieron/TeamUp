part of 'main_view_bloc.dart';

@freezed
class MainViewEvent with _$MainViewEvent {
  const factory MainViewEvent.onLoadSuggestedFriends([String? gameId]) = _OnLoadSuggestedFriends;
  const factory MainViewEvent.onLoadCurrentUser() = _OnLoadCurrentUser;
}
