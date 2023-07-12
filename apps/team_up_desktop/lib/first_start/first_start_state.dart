part of 'first_start_bloc.dart';

@freezed
abstract class FirstStartState with _$FirstStartState {
  const factory FirstStartState({
    required StateType type,
    required FirstStartPageEnum currentPage,
  }) = _FirstStartState;

  factory FirstStartState.initial() {
    return const FirstStartState(
      currentPage: FirstStartPageEnum.loginPage,
      type: StateType.loaded,
    );
  }
}
