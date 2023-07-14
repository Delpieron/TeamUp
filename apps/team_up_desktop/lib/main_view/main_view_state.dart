part of 'main_view_bloc.dart';

@freezed
abstract class MainViewState with _$MainViewState {
  const factory MainViewState({
    required StateType type,
    required List<User>? suggestedUsers,
    required User? currentUser,
    required List<Game> availableGames,
    required String selectedValue,
  }) = _MainViewState;

  factory MainViewState.initial() {
    return const MainViewState(
      currentUser: null,
      suggestedUsers: null,
      availableGames: [],
      selectedValue: 'Brak',
      type: StateType.loading,
    );
  }
}
