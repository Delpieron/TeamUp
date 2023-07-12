part of 'registration_bloc.dart';


@freezed
class RegistrationBlocEvent with _$RegistrationBlocEvent {
  const factory RegistrationBlocEvent.onGamesLoadRequest() = _OnGamesLoadRequest;
  const factory RegistrationBlocEvent.onGameItemSelected(String id) = _OnGameItemSelected;
}

