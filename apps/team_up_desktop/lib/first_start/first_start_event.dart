part of 'first_start_bloc.dart';

// ignore_for_file: avoid_positional_boolean_parameters
@freezed
class FirstStartEvent with _$FirstStartEvent {
  const factory FirstStartEvent.onNewPageRequest(FirstStartPageEnum firstStartPageEnum) = _OnNewPageRequest;
  const factory FirstStartEvent.onStartLoading(bool startLoading) = _OnStartLoading;
}
