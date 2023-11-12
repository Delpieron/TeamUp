// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String id) onGameItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String id)? onGameItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGamesLoadRequest,
    TResult Function(String id)? onGameItemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameItemSelected value) onGameItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameItemSelected value)? onGameItemSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameItemSelected value)? onGameItemSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationBlocEventCopyWith<$Res> {
  factory $RegistrationBlocEventCopyWith(RegistrationBlocEvent value, $Res Function(RegistrationBlocEvent) then) =
      _$RegistrationBlocEventCopyWithImpl<$Res, RegistrationBlocEvent>;
}

/// @nodoc
class _$RegistrationBlocEventCopyWithImpl<$Res, $Val extends RegistrationBlocEvent>
    implements $RegistrationBlocEventCopyWith<$Res> {
  _$RegistrationBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnGamesLoadRequestImplCopyWith<$Res> {
  factory _$$OnGamesLoadRequestImplCopyWith(
          _$OnGamesLoadRequestImpl value, $Res Function(_$OnGamesLoadRequestImpl) then) =
      __$$OnGamesLoadRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnGamesLoadRequestImplCopyWithImpl<$Res>
    extends _$RegistrationBlocEventCopyWithImpl<$Res, _$OnGamesLoadRequestImpl>
    implements _$$OnGamesLoadRequestImplCopyWith<$Res> {
  __$$OnGamesLoadRequestImplCopyWithImpl(_$OnGamesLoadRequestImpl _value, $Res Function(_$OnGamesLoadRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnGamesLoadRequestImpl implements _OnGamesLoadRequest {
  const _$OnGamesLoadRequestImpl();

  @override
  String toString() {
    return 'RegistrationBlocEvent.onGamesLoadRequest()';
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
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String id) onGameItemSelected,
  }) {
    return onGamesLoadRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String id)? onGameItemSelected,
  }) {
    return onGamesLoadRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGamesLoadRequest,
    TResult Function(String id)? onGameItemSelected,
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
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameItemSelected value) onGameItemSelected,
  }) {
    return onGamesLoadRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameItemSelected value)? onGameItemSelected,
  }) {
    return onGamesLoadRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameItemSelected value)? onGameItemSelected,
    required TResult orElse(),
  }) {
    if (onGamesLoadRequest != null) {
      return onGamesLoadRequest(this);
    }
    return orElse();
  }
}

abstract class _OnGamesLoadRequest implements RegistrationBlocEvent {
  const factory _OnGamesLoadRequest() = _$OnGamesLoadRequestImpl;
}

/// @nodoc
abstract class _$$OnGameItemSelectedImplCopyWith<$Res> {
  factory _$$OnGameItemSelectedImplCopyWith(
          _$OnGameItemSelectedImpl value, $Res Function(_$OnGameItemSelectedImpl) then) =
      __$$OnGameItemSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$OnGameItemSelectedImplCopyWithImpl<$Res>
    extends _$RegistrationBlocEventCopyWithImpl<$Res, _$OnGameItemSelectedImpl>
    implements _$$OnGameItemSelectedImplCopyWith<$Res> {
  __$$OnGameItemSelectedImplCopyWithImpl(_$OnGameItemSelectedImpl _value, $Res Function(_$OnGameItemSelectedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$OnGameItemSelectedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnGameItemSelectedImpl implements _OnGameItemSelected {
  const _$OnGameItemSelectedImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'RegistrationBlocEvent.onGameItemSelected(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnGameItemSelectedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnGameItemSelectedImplCopyWith<_$OnGameItemSelectedImpl> get copyWith =>
      __$$OnGameItemSelectedImplCopyWithImpl<_$OnGameItemSelectedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onGamesLoadRequest,
    required TResult Function(String id) onGameItemSelected,
  }) {
    return onGameItemSelected(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onGamesLoadRequest,
    TResult? Function(String id)? onGameItemSelected,
  }) {
    return onGameItemSelected?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onGamesLoadRequest,
    TResult Function(String id)? onGameItemSelected,
    required TResult orElse(),
  }) {
    if (onGameItemSelected != null) {
      return onGameItemSelected(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnGamesLoadRequest value) onGamesLoadRequest,
    required TResult Function(_OnGameItemSelected value) onGameItemSelected,
  }) {
    return onGameItemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult? Function(_OnGameItemSelected value)? onGameItemSelected,
  }) {
    return onGameItemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnGamesLoadRequest value)? onGamesLoadRequest,
    TResult Function(_OnGameItemSelected value)? onGameItemSelected,
    required TResult orElse(),
  }) {
    if (onGameItemSelected != null) {
      return onGameItemSelected(this);
    }
    return orElse();
  }
}

abstract class _OnGameItemSelected implements RegistrationBlocEvent {
  const factory _OnGameItemSelected(final String id) = _$OnGameItemSelectedImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$OnGameItemSelectedImplCopyWith<_$OnGameItemSelectedImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationBlocState {
  StateType get type => throw _privateConstructorUsedError;
  List<Game> get availableGames => throw _privateConstructorUsedError;
  List<String> get selectedGamesIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationBlocStateCopyWith<RegistrationBlocState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationBlocStateCopyWith<$Res> {
  factory $RegistrationBlocStateCopyWith(RegistrationBlocState value, $Res Function(RegistrationBlocState) then) =
      _$RegistrationBlocStateCopyWithImpl<$Res, RegistrationBlocState>;
  @useResult
  $Res call({StateType type, List<Game> availableGames, List<String> selectedGamesIds});
}

/// @nodoc
class _$RegistrationBlocStateCopyWithImpl<$Res, $Val extends RegistrationBlocState>
    implements $RegistrationBlocStateCopyWith<$Res> {
  _$RegistrationBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? availableGames = null,
    Object? selectedGamesIds = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      availableGames: null == availableGames
          ? _value.availableGames
          : availableGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      selectedGamesIds: null == selectedGamesIds
          ? _value.selectedGamesIds
          : selectedGamesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirstStartStateImplCopyWith<$Res> implements $RegistrationBlocStateCopyWith<$Res> {
  factory _$$FirstStartStateImplCopyWith(_$FirstStartStateImpl value, $Res Function(_$FirstStartStateImpl) then) =
      __$$FirstStartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateType type, List<Game> availableGames, List<String> selectedGamesIds});
}

/// @nodoc
class __$$FirstStartStateImplCopyWithImpl<$Res> extends _$RegistrationBlocStateCopyWithImpl<$Res, _$FirstStartStateImpl>
    implements _$$FirstStartStateImplCopyWith<$Res> {
  __$$FirstStartStateImplCopyWithImpl(_$FirstStartStateImpl _value, $Res Function(_$FirstStartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? availableGames = null,
    Object? selectedGamesIds = null,
  }) {
    return _then(_$FirstStartStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      availableGames: null == availableGames
          ? _value._availableGames
          : availableGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      selectedGamesIds: null == selectedGamesIds
          ? _value._selectedGamesIds
          : selectedGamesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$FirstStartStateImpl implements _FirstStartState {
  const _$FirstStartStateImpl(
      {required this.type, required final List<Game> availableGames, required final List<String> selectedGamesIds})
      : _availableGames = availableGames,
        _selectedGamesIds = selectedGamesIds;

  @override
  final StateType type;
  final List<Game> _availableGames;
  @override
  List<Game> get availableGames {
    if (_availableGames is EqualUnmodifiableListView) return _availableGames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableGames);
  }

  final List<String> _selectedGamesIds;
  @override
  List<String> get selectedGamesIds {
    if (_selectedGamesIds is EqualUnmodifiableListView) return _selectedGamesIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedGamesIds);
  }

  @override
  String toString() {
    return 'RegistrationBlocState(type: $type, availableGames: $availableGames, selectedGamesIds: $selectedGamesIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstStartStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._availableGames, _availableGames) &&
            const DeepCollectionEquality().equals(other._selectedGamesIds, _selectedGamesIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, const DeepCollectionEquality().hash(_availableGames),
      const DeepCollectionEquality().hash(_selectedGamesIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstStartStateImplCopyWith<_$FirstStartStateImpl> get copyWith =>
      __$$FirstStartStateImplCopyWithImpl<_$FirstStartStateImpl>(this, _$identity);
}

abstract class _FirstStartState implements RegistrationBlocState {
  const factory _FirstStartState(
      {required final StateType type,
      required final List<Game> availableGames,
      required final List<String> selectedGamesIds}) = _$FirstStartStateImpl;

  @override
  StateType get type;
  @override
  List<Game> get availableGames;
  @override
  List<String> get selectedGamesIds;
  @override
  @JsonKey(ignore: true)
  _$$FirstStartStateImplCopyWith<_$FirstStartStateImpl> get copyWith => throw _privateConstructorUsedError;
}
