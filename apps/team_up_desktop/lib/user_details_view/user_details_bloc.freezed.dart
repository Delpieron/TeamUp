// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserGameCategoriesLoad,
    required TResult Function(UserFriendActionStatus action, String userId)
        onChangeUserFriendStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onUserGameCategoriesLoad,
    TResult? Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserGameCategoriesLoad,
    TResult Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnUserGameCategoriesLoad value)
        onUserGameCategoriesLoad,
    required TResult Function(_OnChangeUserFriendStatus value)
        onChangeUserFriendStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnUserGameCategoriesLoad value)?
        onUserGameCategoriesLoad,
    TResult? Function(_OnChangeUserFriendStatus value)?
        onChangeUserFriendStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnUserGameCategoriesLoad value)? onUserGameCategoriesLoad,
    TResult Function(_OnChangeUserFriendStatus value)? onChangeUserFriendStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsEventCopyWith<$Res> {
  factory $UserDetailsEventCopyWith(
          UserDetailsEvent value, $Res Function(UserDetailsEvent) then) =
      _$UserDetailsEventCopyWithImpl<$Res, UserDetailsEvent>;
}

/// @nodoc
class _$UserDetailsEventCopyWithImpl<$Res, $Val extends UserDetailsEvent>
    implements $UserDetailsEventCopyWith<$Res> {
  _$UserDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnUserGameCategoriesLoadCopyWith<$Res> {
  factory _$$_OnUserGameCategoriesLoadCopyWith(
          _$_OnUserGameCategoriesLoad value,
          $Res Function(_$_OnUserGameCategoriesLoad) then) =
      __$$_OnUserGameCategoriesLoadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnUserGameCategoriesLoadCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$_OnUserGameCategoriesLoad>
    implements _$$_OnUserGameCategoriesLoadCopyWith<$Res> {
  __$$_OnUserGameCategoriesLoadCopyWithImpl(_$_OnUserGameCategoriesLoad _value,
      $Res Function(_$_OnUserGameCategoriesLoad) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnUserGameCategoriesLoad implements _OnUserGameCategoriesLoad {
  const _$_OnUserGameCategoriesLoad();

  @override
  String toString() {
    return 'UserDetailsEvent.onUserGameCategoriesLoad()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnUserGameCategoriesLoad);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserGameCategoriesLoad,
    required TResult Function(UserFriendActionStatus action, String userId)
        onChangeUserFriendStatus,
  }) {
    return onUserGameCategoriesLoad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onUserGameCategoriesLoad,
    TResult? Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
  }) {
    return onUserGameCategoriesLoad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserGameCategoriesLoad,
    TResult Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
    required TResult orElse(),
  }) {
    if (onUserGameCategoriesLoad != null) {
      return onUserGameCategoriesLoad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnUserGameCategoriesLoad value)
        onUserGameCategoriesLoad,
    required TResult Function(_OnChangeUserFriendStatus value)
        onChangeUserFriendStatus,
  }) {
    return onUserGameCategoriesLoad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnUserGameCategoriesLoad value)?
        onUserGameCategoriesLoad,
    TResult? Function(_OnChangeUserFriendStatus value)?
        onChangeUserFriendStatus,
  }) {
    return onUserGameCategoriesLoad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnUserGameCategoriesLoad value)? onUserGameCategoriesLoad,
    TResult Function(_OnChangeUserFriendStatus value)? onChangeUserFriendStatus,
    required TResult orElse(),
  }) {
    if (onUserGameCategoriesLoad != null) {
      return onUserGameCategoriesLoad(this);
    }
    return orElse();
  }
}

abstract class _OnUserGameCategoriesLoad implements UserDetailsEvent {
  const factory _OnUserGameCategoriesLoad() = _$_OnUserGameCategoriesLoad;
}

/// @nodoc
abstract class _$$_OnChangeUserFriendStatusCopyWith<$Res> {
  factory _$$_OnChangeUserFriendStatusCopyWith(
          _$_OnChangeUserFriendStatus value,
          $Res Function(_$_OnChangeUserFriendStatus) then) =
      __$$_OnChangeUserFriendStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({UserFriendActionStatus action, String userId});
}

/// @nodoc
class __$$_OnChangeUserFriendStatusCopyWithImpl<$Res>
    extends _$UserDetailsEventCopyWithImpl<$Res, _$_OnChangeUserFriendStatus>
    implements _$$_OnChangeUserFriendStatusCopyWith<$Res> {
  __$$_OnChangeUserFriendStatusCopyWithImpl(_$_OnChangeUserFriendStatus _value,
      $Res Function(_$_OnChangeUserFriendStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? userId = null,
  }) {
    return _then(_$_OnChangeUserFriendStatus(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as UserFriendActionStatus,
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OnChangeUserFriendStatus implements _OnChangeUserFriendStatus {
  const _$_OnChangeUserFriendStatus(this.action, this.userId);

  @override
  final UserFriendActionStatus action;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserDetailsEvent.onChangeUserFriendStatus(action: $action, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnChangeUserFriendStatus &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnChangeUserFriendStatusCopyWith<_$_OnChangeUserFriendStatus>
      get copyWith => __$$_OnChangeUserFriendStatusCopyWithImpl<
          _$_OnChangeUserFriendStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onUserGameCategoriesLoad,
    required TResult Function(UserFriendActionStatus action, String userId)
        onChangeUserFriendStatus,
  }) {
    return onChangeUserFriendStatus(action, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onUserGameCategoriesLoad,
    TResult? Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
  }) {
    return onChangeUserFriendStatus?.call(action, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onUserGameCategoriesLoad,
    TResult Function(UserFriendActionStatus action, String userId)?
        onChangeUserFriendStatus,
    required TResult orElse(),
  }) {
    if (onChangeUserFriendStatus != null) {
      return onChangeUserFriendStatus(action, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnUserGameCategoriesLoad value)
        onUserGameCategoriesLoad,
    required TResult Function(_OnChangeUserFriendStatus value)
        onChangeUserFriendStatus,
  }) {
    return onChangeUserFriendStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnUserGameCategoriesLoad value)?
        onUserGameCategoriesLoad,
    TResult? Function(_OnChangeUserFriendStatus value)?
        onChangeUserFriendStatus,
  }) {
    return onChangeUserFriendStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnUserGameCategoriesLoad value)? onUserGameCategoriesLoad,
    TResult Function(_OnChangeUserFriendStatus value)? onChangeUserFriendStatus,
    required TResult orElse(),
  }) {
    if (onChangeUserFriendStatus != null) {
      return onChangeUserFriendStatus(this);
    }
    return orElse();
  }
}

abstract class _OnChangeUserFriendStatus implements UserDetailsEvent {
  const factory _OnChangeUserFriendStatus(
          final UserFriendActionStatus action, final String userId) =
      _$_OnChangeUserFriendStatus;

  UserFriendActionStatus get action;
  String get userId;
  @JsonKey(ignore: true)
  _$$_OnChangeUserFriendStatusCopyWith<_$_OnChangeUserFriendStatus>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailsState {
  StateType get type => throw _privateConstructorUsedError;
  List<String> get gameCategories => throw _privateConstructorUsedError;
  UserFriendStatus get userFriendActionStatus =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailsStateCopyWith<UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsStateCopyWith<$Res> {
  factory $UserDetailsStateCopyWith(
          UserDetailsState value, $Res Function(UserDetailsState) then) =
      _$UserDetailsStateCopyWithImpl<$Res, UserDetailsState>;
  @useResult
  $Res call(
      {StateType type,
      List<String> gameCategories,
      UserFriendStatus userFriendActionStatus});
}

/// @nodoc
class _$UserDetailsStateCopyWithImpl<$Res, $Val extends UserDetailsState>
    implements $UserDetailsStateCopyWith<$Res> {
  _$UserDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? gameCategories = null,
    Object? userFriendActionStatus = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      gameCategories: null == gameCategories
          ? _value.gameCategories
          : gameCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userFriendActionStatus: null == userFriendActionStatus
          ? _value.userFriendActionStatus
          : userFriendActionStatus // ignore: cast_nullable_to_non_nullable
              as UserFriendStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserDetailsStateCopyWith<$Res>
    implements $UserDetailsStateCopyWith<$Res> {
  factory _$$_UserDetailsStateCopyWith(
          _$_UserDetailsState value, $Res Function(_$_UserDetailsState) then) =
      __$$_UserDetailsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateType type,
      List<String> gameCategories,
      UserFriendStatus userFriendActionStatus});
}

/// @nodoc
class __$$_UserDetailsStateCopyWithImpl<$Res>
    extends _$UserDetailsStateCopyWithImpl<$Res, _$_UserDetailsState>
    implements _$$_UserDetailsStateCopyWith<$Res> {
  __$$_UserDetailsStateCopyWithImpl(
      _$_UserDetailsState _value, $Res Function(_$_UserDetailsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? gameCategories = null,
    Object? userFriendActionStatus = null,
  }) {
    return _then(_$_UserDetailsState(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      gameCategories: null == gameCategories
          ? _value._gameCategories
          : gameCategories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userFriendActionStatus: null == userFriendActionStatus
          ? _value.userFriendActionStatus
          : userFriendActionStatus // ignore: cast_nullable_to_non_nullable
              as UserFriendStatus,
    ));
  }
}

/// @nodoc

class _$_UserDetailsState implements _UserDetailsState {
  const _$_UserDetailsState(
      {required this.type,
      required final List<String> gameCategories,
      required this.userFriendActionStatus})
      : _gameCategories = gameCategories;

  @override
  final StateType type;
  final List<String> _gameCategories;
  @override
  List<String> get gameCategories {
    if (_gameCategories is EqualUnmodifiableListView) return _gameCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameCategories);
  }

  @override
  final UserFriendStatus userFriendActionStatus;

  @override
  String toString() {
    return 'UserDetailsState(type: $type, gameCategories: $gameCategories, userFriendActionStatus: $userFriendActionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailsState &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._gameCategories, _gameCategories) &&
            (identical(other.userFriendActionStatus, userFriendActionStatus) ||
                other.userFriendActionStatus == userFriendActionStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      const DeepCollectionEquality().hash(_gameCategories),
      userFriendActionStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      __$$_UserDetailsStateCopyWithImpl<_$_UserDetailsState>(this, _$identity);
}

abstract class _UserDetailsState implements UserDetailsState {
  const factory _UserDetailsState(
          {required final StateType type,
          required final List<String> gameCategories,
          required final UserFriendStatus userFriendActionStatus}) =
      _$_UserDetailsState;

  @override
  StateType get type;
  @override
  List<String> get gameCategories;
  @override
  UserFriendStatus get userFriendActionStatus;
  @override
  @JsonKey(ignore: true)
  _$$_UserDetailsStateCopyWith<_$_UserDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}
