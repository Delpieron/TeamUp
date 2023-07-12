part of 'registration_bloc.dart';

@freezed
abstract class RegistrationBlocState with _$RegistrationBlocState {
  const factory RegistrationBlocState({
    required StateType type,
    required List<Game> availableGames,
    required List<String> selectedGamesIds,
  }) = _FirstStartState;

  factory RegistrationBlocState.initial() {
    return const RegistrationBlocState(
      availableGames: [],
      selectedGamesIds: [],
      type: StateType.loading,
    );
  }
}
