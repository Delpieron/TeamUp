import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';

part 'game.g.dart';

@freezed
class Game with _$Game {
  const factory Game({required String id, required String name, required String category}) = _Game;

  factory Game.fromJson(Map<String, Object?> json) => _$GameFromJson(json);
}
