// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) = _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call({String id, String name, String category});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game> implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GameCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$_GameCopyWith(_$_Game value, $Res Function(_$_Game) then) = __$$_GameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String category});
}

/// @nodoc
class __$$_GameCopyWithImpl<$Res> extends _$GameCopyWithImpl<$Res, _$_Game> implements _$$_GameCopyWith<$Res> {
  __$$_GameCopyWithImpl(_$_Game _value, $Res Function(_$_Game) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? category = null,
  }) {
    return _then(_$_Game(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Game implements _Game {
  const _$_Game({required this.id, required this.name, required this.category});

  factory _$_Game.fromJson(Map<String, dynamic> json) => _$$_GameFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String category;

  @override
  String toString() {
    return 'Game(id: $id, name: $name, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Game &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) || other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GameCopyWith<_$_Game> get copyWith => __$$_GameCopyWithImpl<_$_Game>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GameToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game({required final String id, required final String name, required final String category}) = _$_Game;

  factory _Game.fromJson(Map<String, dynamic> json) = _$_Game.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get category;
  @override
  @JsonKey(ignore: true)
  _$$_GameCopyWith<_$_Game> get copyWith => throw _privateConstructorUsedError;
}
