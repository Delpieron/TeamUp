part of 'main_view_bloc.dart';

@freezed
abstract class MainViewState with _$MainViewState {
  const factory MainViewState({
    required StateType type,
    required List<User>? suggestedUsers,
    required User? currentUser,
  }) = _MainViewState;

  factory MainViewState.initial() {
    return const MainViewState(
      currentUser: null,
      suggestedUsers: null,
      type: StateType.loading,
    );
  }
}
