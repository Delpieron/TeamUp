import 'package:team_up_desktop/models/game/game.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';
@freezed
class User  with _$User{
  const factory User({
    required String id,
    required String username,
    required String email,
    required int age,
    required int startHour,
    required int endHour,
    required List<Game> gamesList,
    required List<User>? friendsList,
  })= _User;


  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
