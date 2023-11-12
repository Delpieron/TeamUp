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
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String value, String gameId) onGameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String value, String gameId)? onGameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    TResult Function()? onGamesLoadRequest,
    TResult Function(String value, String gameId)? onGameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value) onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameChanged value) onGameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameChanged value)? onGameChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameChanged value)? onGameChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewEventCopyWith<$Res> {
  factory $MainViewEventCopyWith(MainViewEvent value, $Res Function(MainViewEvent) then) =
      _$MainViewEventCopyWithImpl<$Res, MainViewEvent>;
}

/// @nodoc
class _$MainViewEventCopyWithImpl<$Res, $Val extends MainViewEvent> implements $MainViewEventCopyWith<$Res> {
  _$MainViewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnLoadSuggestedFriendsImplCopyWith<$Res> {
  factory _$$OnLoadSuggestedFriendsImplCopyWith(
          _$OnLoadSuggestedFriendsImpl value, $Res Function(_$OnLoadSuggestedFriendsImpl) then) =
      __$$OnLoadSuggestedFriendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? gameId});
}

/// @nodoc
class __$$OnLoadSuggestedFriendsImplCopyWithImpl<$Res>
    extends _$MainViewEventCopyWithImpl<$Res, _$OnLoadSuggestedFriendsImpl>
    implements _$$OnLoadSuggestedFriendsImplCopyWith<$Res> {
  __$$OnLoadSuggestedFriendsImplCopyWithImpl(
      _$OnLoadSuggestedFriendsImpl _value, $Res Function(_$OnLoadSuggestedFriendsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameId = freezed,
  }) {
    return _then(_$OnLoadSuggestedFriendsImpl(
      freezed == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$OnLoadSuggestedFriendsImpl implements _OnLoadSuggestedFriends {
  const _$OnLoadSuggestedFriendsImpl([this.gameId]);

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
            other is _$OnLoadSuggestedFriendsImpl &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoadSuggestedFriendsImplCopyWith<_$OnLoadSuggestedFriendsImpl> get copyWith =>
      __$$OnLoadSuggestedFriendsImplCopyWithImpl<_$OnLoadSuggestedFriendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String value, String gameId) onGameChanged,
  }) {
    return onLoadSuggestedFriends(gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String value, String gameId)? onGameChanged,
  }) {
    return onLoadSuggestedFriends?.call(gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    TResult Function()? onGamesLoadRequest,
    TResult Function(String value, String gameId)? onGameChanged,
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
    required TResult Function(_OnLoadSuggestedFriends value) onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameChanged value) onGameChanged,
  }) {
    return onLoadSuggestedFriends(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameChanged value)? onGameChanged,
  }) {
    return onLoadSuggestedFriends?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameChanged value)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onLoadSuggestedFriends != null) {
      return onLoadSuggestedFriends(this);
    }
    return orElse();
  }
}

abstract class _OnLoadSuggestedFriends implements MainViewEvent {
  const factory _OnLoadSuggestedFriends([final String? gameId]) = _$OnLoadSuggestedFriendsImpl;

  String? get gameId;
  @JsonKey(ignore: true)
  _$$OnLoadSuggestedFriendsImplCopyWith<_$OnLoadSuggestedFriendsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoadCurrentUserImplCopyWith<$Res> {
  factory _$$OnLoadCurrentUserImplCopyWith(_$OnLoadCurrentUserImpl value, $Res Function(_$OnLoadCurrentUserImpl) then) =
      __$$OnLoadCurrentUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadCurrentUserImplCopyWithImpl<$Res> extends _$MainViewEventCopyWithImpl<$Res, _$OnLoadCurrentUserImpl>
    implements _$$OnLoadCurrentUserImplCopyWith<$Res> {
  __$$OnLoadCurrentUserImplCopyWithImpl(_$OnLoadCurrentUserImpl _value, $Res Function(_$OnLoadCurrentUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadCurrentUserImpl implements _OnLoadCurrentUser {
  const _$OnLoadCurrentUserImpl();

  @override
  String toString() {
    return 'MainViewEvent.onLoadCurrentUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$OnLoadCurrentUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String value, String gameId) onGameChanged,
  }) {
    return onLoadCurrentUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String value, String gameId)? onGameChanged,
  }) {
    return onLoadCurrentUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    TResult Function()? onGamesLoadRequest,
    TResult Function(String value, String gameId)? onGameChanged,
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
    required TResult Function(_OnLoadSuggestedFriends value) onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameChanged value) onGameChanged,
  }) {
    return onLoadCurrentUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameChanged value)? onGameChanged,
  }) {
    return onLoadCurrentUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameChanged value)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onLoadCurrentUser != null) {
      return onLoadCurrentUser(this);
    }
    return orElse();
  }
}

abstract class _OnLoadCurrentUser implements MainViewEvent {
  const factory _OnLoadCurrentUser() = _$OnLoadCurrentUserImpl;
}

/// @nodoc
abstract class _$$OnGamesLoadRequestImplCopyWith<$Res> {
  factory _$$OnGamesLoadRequestImplCopyWith(
          _$OnGamesLoadRequestImpl value, $Res Function(_$OnGamesLoadRequestImpl) then) =
      __$$OnGamesLoadRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGamesLoadRequestImplCopyWithImpl<$Res> extends _$MainViewEventCopyWithImpl<$Res, _$OnGamesLoadRequestImpl>
    implements _$$OnGamesLoadRequestImplCopyWith<$Res> {
  __$$OnGamesLoadRequestImplCopyWithImpl(_$OnGamesLoadRequestImpl _value, $Res Function(_$OnGamesLoadRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGamesLoadRequestImpl implements _OnGamesLoadRequest {
  const _$OnGamesLoadRequestImpl();

  @override
  String toString() {
    return 'MainViewEvent.onGamesLoadRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$OnGamesLoadRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String value, String gameId) onGameChanged,
  }) {
    return onGamesLoadRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String value, String gameId)? onGameChanged,
  }) {
    return onGamesLoadRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    TResult Function()? onGamesLoadRequest,
    TResult Function(String value, String gameId)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onGamesLoadRequest != null) {
      return onGamesLoadRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value) onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameChanged value) onGameChanged,
  }) {
    return onGamesLoadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameChanged value)? onGameChanged,
  }) {
    return onGamesLoadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameChanged value)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onGamesLoadRequest != null) {
      return onGamesLoadRequest(this);
    }
    return orElse();
  }
}

abstract class _OnGamesLoadRequest implements MainViewEvent {
  const factory _OnGamesLoadRequest() = _$OnGamesLoadRequestImpl;
}

/// @nodoc
abstract class _$$OnGameChangedImplCopyWith<$Res> {
  factory _$$OnGameChangedImplCopyWith(_$OnGameChangedImpl value, $Res Function(_$OnGameChangedImpl) then) =
      __$$OnGameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value, String gameId});
}

/// @nodoc
class __$$OnGameChangedImplCopyWithImpl<$Res> extends _$MainViewEventCopyWithImpl<$Res, _$OnGameChangedImpl>
    implements _$$OnGameChangedImplCopyWith<$Res> {
  __$$OnGameChangedImplCopyWithImpl(_$OnGameChangedImpl _value, $Res Function(_$OnGameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? gameId = null,
  }) {
    return _then(_$OnGameChangedImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      null == gameId
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnGameChangedImpl implements _OnGameChanged {
  const _$OnGameChangedImpl(this.value, this.gameId);

  @override
  final String value;
  @override
  final String gameId;

  @override
  String toString() {
    return 'MainViewEvent.onGameChanged(value: $value, gameId: $gameId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGameChangedImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.gameId, gameId) || other.gameId == gameId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, gameId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGameChangedImplCopyWith<_$OnGameChangedImpl> get copyWith =>
      __$$OnGameChangedImplCopyWithImpl<_$OnGameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? gameId) onLoadSuggestedFriends,
    required TResult Function() onLoadCurrentUser,
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String value, String gameId) onGameChanged,
  }) {
    return onGameChanged(value, gameId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? gameId)? onLoadSuggestedFriends,
    TResult? Function()? onLoadCurrentUser,
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String value, String gameId)? onGameChanged,
  }) {
    return onGameChanged?.call(value, gameId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? gameId)? onLoadSuggestedFriends,
    TResult Function()? onLoadCurrentUser,
    TResult Function()? onGamesLoadRequest,
    TResult Function(String value, String gameId)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onGameChanged != null) {
      return onGameChanged(value, gameId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnLoadSuggestedFriends value) onLoadSuggestedFriends,
    required TResult Function(_OnLoadCurrentUser value) onLoadCurrentUser,
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameChanged value) onGameChanged,
  }) {
    return onGameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult? Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameChanged value)? onGameChanged,
  }) {
    return onGameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnLoadSuggestedFriends value)? onLoadSuggestedFriends,
    TResult Function(_OnLoadCurrentUser value)? onLoadCurrentUser,
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameChanged value)? onGameChanged,
    required TResult orElse(),
  }) {
    if (onGameChanged != null) {
      return onGameChanged(this);
    }
    return orElse();
  }
}

abstract class _OnGameChanged implements MainViewEvent {
  const factory _OnGameChanged(final String value, final String gameId) = _$OnGameChangedImpl;

  String get value;
  String get gameId;
  @JsonKey(ignore: true)
  _$$OnGameChangedImplCopyWith<_$OnGameChangedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainViewState {
  StateType get type => throw _privateConstructorUsedError;
  List<User>? get suggestedUsers => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  List<Game> get availableGames => throw _privateConstructorUsedError;
  String get selectedValue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainViewStateCopyWith<MainViewState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainViewStateCopyWith<$Res> {
  factory $MainViewStateCopyWith(MainViewState value, $Res Function(MainViewState) then) =
      _$MainViewStateCopyWithImpl<$Res, MainViewState>;
  @useResult
  $Res call(
      {StateType type, List<User>? suggestedUsers, User? currentUser, List<Game> availableGames, String selectedValue});

  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class _$MainViewStateCopyWithImpl<$Res, $Val extends MainViewState> implements $MainViewStateCopyWith<$Res> {
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
    Object? availableGames = null,
    Object? selectedValue = null,
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
      availableGames: null == availableGames
          ? _value.availableGames
          : availableGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$MainViewStateImplCopyWith<$Res> implements $MainViewStateCopyWith<$Res> {
  factory _$$MainViewStateImplCopyWith(_$MainViewStateImpl value, $Res Function(_$MainViewStateImpl) then) =
      __$$MainViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateType type, List<User>? suggestedUsers, User? currentUser, List<Game> availableGames, String selectedValue});

  @override
  $UserCopyWith<$Res>? get currentUser;
}

/// @nodoc
class __$$MainViewStateImplCopyWithImpl<$Res> extends _$MainViewStateCopyWithImpl<$Res, _$MainViewStateImpl>
    implements _$$MainViewStateImplCopyWith<$Res> {
  __$$MainViewStateImplCopyWithImpl(_$MainViewStateImpl _value, $Res Function(_$MainViewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? suggestedUsers = freezed,
    Object? currentUser = freezed,
    Object? availableGames = null,
    Object? selectedValue = null,
  }) {
    return _then(_$MainViewStateImpl(
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
      availableGames: null == availableGames
          ? _value._availableGames
          : availableGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      selectedValue: null == selectedValue
          ? _value.selectedValue
          : selectedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MainViewStateImpl implements _MainViewState {
  const _$MainViewStateImpl(
      {required this.type,
      required final List<User>? suggestedUsers,
      required this.currentUser,
      required final List<Game> availableGames,
      required this.selectedValue})
      : _suggestedUsers = suggestedUsers,
        _availableGames = availableGames;

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
  final List<Game> _availableGames;
  @override
  List<Game> get availableGames {
    if (_availableGames is EqualUnmodifiableListView) return _availableGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableGames);
  }

  @override
  final String selectedValue;

  @override
  String toString() {
    return 'MainViewState(type: $type, suggestedUsers: $suggestedUsers, currentUser: $currentUser, availableGames: $availableGames, selectedValue: $selectedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainViewStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._suggestedUsers, _suggestedUsers) &&
            (identical(other.currentUser, currentUser) || other.currentUser == currentUser) &&
            const DeepCollectionEquality().equals(other._availableGames, _availableGames) &&
            (identical(other.selectedValue, selectedValue) || other.selectedValue == selectedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, const DeepCollectionEquality().hash(_suggestedUsers), currentUser,
      const DeepCollectionEquality().hash(_availableGames), selectedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainViewStateImplCopyWith<_$MainViewStateImpl> get copyWith =>
      __$$MainViewStateImplCopyWithImpl<_$MainViewStateImpl>(this, _$identity);
}

abstract class _MainViewState implements MainViewState {
  const factory _MainViewState(
      {required final StateType type,
      required final List<User>? suggestedUsers,
      required final User? currentUser,
      required final List<Game> availableGames,
      required final String selectedValue}) = _$MainViewStateImpl;

  @override
  StateType get type;
  @override
  List<User>? get suggestedUsers;
  @override
  User? get currentUser;
  @override
  List<Game> get availableGames;
  @override
  String get selectedValue;
  @override
  @JsonKey(ignore: true)
  _$$MainViewStateImplCopyWith<_$MainViewStateImpl> get copyWith => throw _privateConstructorUsedError;
}
