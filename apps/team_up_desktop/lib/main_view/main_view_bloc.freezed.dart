// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_view_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainViewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value)
        onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewEventCopyWith<$Res> {
  factory $MainViewEventCopyWith(
          MainViewEvent value, $Res Function(MainViewEvent) then) =
      _$MainViewEventCopyWithImpl<$Res, MainViewEvent>;
}

/// @nodoc
class _$MainViewEventCopyWithImpl<$Res, $Val extends MainViewEvent>
    implements $MainViewEventCopyWith<$Res> {
  _$MainViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnLoadSuggestedFriendsCopyWith<$Res> {
  factory _$$_OnLoadSuggestedFriendsCopyWith(_$_OnLoadSuggestedFriends value,
          $Res Function(_$_OnLoadSuggestedFriends) then) =
      __$$_OnLoadSuggestedFriendsCopyWithImpl<$Res>;
  @useResult
  $Res call({String? gameId});
}

/// @nodoc
class __$$_OnLoadSuggestedFriendsCopyWithImpl<$Res>
    extends _$MainViewEventCopyWithImpl<$Res, _$_OnLoadSuggestedFriends>
    implements _$$_OnLoadSuggestedFriendsCopyWith<$Res> {
  __$$_OnLoadSuggestedFriendsCopyWithImpl(_$_OnLoadSuggestedFriends _value,
      $Res Function(_$_OnLoadSuggestedFriends) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(_$_OnLoadSuggestedFriends(
      freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OnLoadSuggestedFriends implements _OnLoadSuggestedFriends {
  const _$_OnLoadSuggestedFriends([this.gameId]);

  @override
  final String? gameId;

  @override
  String toString() {
    return 'MainViewEvent.onLoadSuggestedFriends(gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnLoadSuggestedFriends &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnLoadSuggestedFriendsCopyWith<_$_OnLoadSuggestedFriends> get copyWith =>
      __$$_OnLoadSuggestedFriendsCopyWithImpl<_$_OnLoadSuggestedFriends>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
  }) {
    return onLoadSuggestedFriends(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
  }) {
    return onLoadSuggestedFriends?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    required TResult orElse(),
  }) {
    if (onLoadSuggestedFriends != null) {
      return onLoadSuggestedFriends(gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value)
        onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
  }) {
    return onLoadSuggestedFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
  }) {
    return onLoadSuggestedFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    required TResult orElse(),
  }) {
    if (onLoadSuggestedFriends != null) {
      return onLoadSuggestedFriends(this);
    }
    return orElse();
  }
}

abstract class _OnLoadSuggestedFriends implements MainViewEvent {
  const factory _OnLoadSuggestedFriends([final String? gameId]) =
      _$_OnLoadSuggestedFriends;

  String? get gameId;
  @JsonKey(ignore: true)
  _$$_OnLoadSuggestedFriendsCopyWith<_$_OnLoadSuggestedFriends> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OnLoadCurrentUserCopyWith<$Res> {
  factory _$$_OnLoadCurrentUserCopyWith(_$_OnLoadCurrentUser value,
          $Res Function(_$_OnLoadCurrentUser) then) =
      __$$_OnLoadCurrentUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnLoadCurrentUserCopyWithImpl<$Res>
    extends _$MainViewEventCopyWithImpl<$Res, _$_OnLoadCurrentUser>
    implements _$$_OnLoadCurrentUserCopyWith<$Res> {
  __$$_OnLoadCurrentUserCopyWithImpl(
      _$_OnLoadCurrentUser _value, $Res Function(_$_OnLoadCurrentUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnLoadCurrentUser implements _OnLoadCurrentUser {
  const _$_OnLoadCurrentUser();

  @override
  String toString() {
    return 'MainViewEvent.onLoadCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnLoadCurrentUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
  }) {
    return onLoadCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
  }) {
    return onLoadCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    required TResult orElse(),
  }) {
    if (onLoadCurrentUser != null) {
      return onLoadCurrentUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value)
        onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
  }) {
    return onLoadCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
  }) {
    return onLoadCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    required TResult orElse(),
  }) {
    if (onLoadCurrentUser != null) {
      return onLoadCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _OnLoadCurrentUser implements MainViewEvent {
  const factory _OnLoadCurrentUser() = _$_OnLoadCurrentUser;
}

/// @nodoc
mixin _$MainViewState {
  StateType get type => throw _privateConstructorUsedError;
  List<User>? get suggestedUsers => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainViewStateCopyWith<MainViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewStateCopyWith<$Res> {
  factory $MainViewStateCopyWith(
          MainViewState value, $Res Function(MainViewState) then) =
      _$MainViewStateCopyWithImpl<$Res, MainViewState>;
  @useResult
  $Res call({StateType type, List<User>? suggestedUsers, User? currentUser});

  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$MainViewStateCopyWithImpl<$Res, $Val extends MainViewState>
    implements $MainViewStateCopyWith<$Res> {
  _$MainViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestedUsers = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      suggestedUsers: freezed == suggestedUsers
          ? _value.suggestedUsers
          : suggestedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MainViewStateCopyWith<$Res>
    implements $MainViewStateCopyWith<$Res> {
  factory _$$_MainViewStateCopyWith(
          _$_MainViewState value, $Res Function(_$_MainViewState) then) =
      __$$_MainViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateType type, List<User>? suggestedUsers, User? currentUser});

  @override
  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$_MainViewStateCopyWithImpl<$Res>
    extends _$MainViewStateCopyWithImpl<$Res, _$_MainViewState>
    implements _$$_MainViewStateCopyWith<$Res> {
  __$$_MainViewStateCopyWithImpl(
      _$_MainViewState _value, $Res Function(_$_MainViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestedUsers = freezed,
    Object? currentUser = freezed,
  }) {
    return _then(_$_MainViewState(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      suggestedUsers: freezed == suggestedUsers
          ? _value._suggestedUsers
          : suggestedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      currentUser: freezed == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_MainViewState implements _MainViewState {
  const _$_MainViewState(
      {required this.type,
      required final List<User>? suggestedUsers,
      required this.currentUser})
      : _suggestedUsers = suggestedUsers;

  @override
  final StateType type;
  final List<User>? _suggestedUsers;
  @override
  List<User>? get suggestedUsers {
    final value = _suggestedUsers;
    if (value == null) return null;
    if (_suggestedUsers is EqualUnmodifiableListView) return _suggestedUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? currentUser;

  @override
  String toString() {
    return 'MainViewState(type: $type, suggestedUsers: $suggestedUsers, currentUser: $currentUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainViewState &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._suggestedUsers, _suggestedUsers) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_suggestedUsers), currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainViewStateCopyWith<_$_MainViewState> get copyWith =>
      __$$_MainViewStateCopyWithImpl<_$_MainViewState>(this, _$identity);
}

abstract class _MainViewState implements MainViewState {
  const factory _MainViewState(
      {required final StateType type,
      required final List<User>? suggestedUsers,
      required final User? currentUser}) = _$_MainViewState;

  @override
  StateType get type;
  @override
  List<User>? get suggestedUsers;
  @override
  User? get currentUser;
  @override
  @JsonKey(ignore: true)
  _$$_MainViewStateCopyWith<_$_MainViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
