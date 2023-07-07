part of 'first_start_bloc.dart';

@freezed
abstract class FirstStartState with _$FirstStartState {
  const factory FirstStartState({
    required StateType type,
    required bool isLoginView,
  }) = _FirstStartState;

  factory FirstStartState.initial() {
    return const FirstStartState(
      isLoginView: true,
      type: StateType.loaded,
    );
  }
}
