part of 'first_start_bloc.dart';

@freezed
class FirstStartEvent with _$FirstStartEvent {
  const factory FirstStartEvent.onNewPageRequest(FirstStartPageEnum firstStartPageEnum) = _OnNewPageRequest;
}
