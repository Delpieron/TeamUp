// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'first_start_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirstStartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onNewPageRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onNewPageRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onNewPageRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewPageRequest value) onNewPageRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewPageRequest value)? onNewPageRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewPageRequest value)? onNewPageRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStartEventCopyWith<$Res> {
  factory $FirstStartEventCopyWith(
          FirstStartEvent value, $Res Function(FirstStartEvent) then) =
      _$FirstStartEventCopyWithImpl<$Res, FirstStartEvent>;
}

/// @nodoc
class _$FirstStartEventCopyWithImpl<$Res, $Val extends FirstStartEvent>
    implements $FirstStartEventCopyWith<$Res> {
  _$FirstStartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OnNewPageRequestCopyWith<$Res> {
  factory _$$_OnNewPageRequestCopyWith(
          _$_OnNewPageRequest value, $Res Function(_$_OnNewPageRequest) then) =
      __$$_OnNewPageRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnNewPageRequestCopyWithImpl<$Res>
    extends _$FirstStartEventCopyWithImpl<$Res, _$_OnNewPageRequest>
    implements _$$_OnNewPageRequestCopyWith<$Res> {
  __$$_OnNewPageRequestCopyWithImpl(
      _$_OnNewPageRequest _value, $Res Function(_$_OnNewPageRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OnNewPageRequest implements _OnNewPageRequest {
  const _$_OnNewPageRequest();

  @override
  String toString() {
    return 'FirstStartEvent.onNewPageRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OnNewPageRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onNewPageRequest,
  }) {
    return onNewPageRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onNewPageRequest,
  }) {
    return onNewPageRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onNewPageRequest,
    required TResult orElse(),
  }) {
    if (onNewPageRequest != null) {
      return onNewPageRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewPageRequest value) onNewPageRequest,
  }) {
    return onNewPageRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewPageRequest value)? onNewPageRequest,
  }) {
    return onNewPageRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewPageRequest value)? onNewPageRequest,
    required TResult orElse(),
  }) {
    if (onNewPageRequest != null) {
      return onNewPageRequest(this);
    }
    return orElse();
  }
}

abstract class _OnNewPageRequest implements FirstStartEvent {
  const factory _OnNewPageRequest() = _$_OnNewPageRequest;
}

/// @nodoc
mixin _$FirstStartState {
  StateType get type => throw _privateConstructorUsedError;
  bool get isLoginView => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstStartStateCopyWith<FirstStartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStartStateCopyWith<$Res> {
  factory $FirstStartStateCopyWith(
          FirstStartState value, $Res Function(FirstStartState) then) =
      _$FirstStartStateCopyWithImpl<$Res, FirstStartState>;
  @useResult
  $Res call({StateType type, bool isLoginView});
}

/// @nodoc
class _$FirstStartStateCopyWithImpl<$Res, $Val extends FirstStartState>
    implements $FirstStartStateCopyWith<$Res> {
  _$FirstStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isLoginView = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      isLoginView: null == isLoginView
          ? _value.isLoginView
          : isLoginView // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FirstStartStateCopyWith<$Res>
    implements $FirstStartStateCopyWith<$Res> {
  factory _$$_FirstStartStateCopyWith(
          _$_FirstStartState value, $Res Function(_$_FirstStartState) then) =
      __$$_FirstStartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateType type, bool isLoginView});
}

/// @nodoc
class __$$_FirstStartStateCopyWithImpl<$Res>
    extends _$FirstStartStateCopyWithImpl<$Res, _$_FirstStartState>
    implements _$$_FirstStartStateCopyWith<$Res> {
  __$$_FirstStartStateCopyWithImpl(
      _$_FirstStartState _value, $Res Function(_$_FirstStartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? isLoginView = null,
  }) {
    return _then(_$_FirstStartState(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      isLoginView: null == isLoginView
          ? _value.isLoginView
          : isLoginView // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FirstStartState implements _FirstStartState {
  const _$_FirstStartState({required this.type, required this.isLoginView});

  @override
  final StateType type;
  @override
  final bool isLoginView;

  @override
  String toString() {
    return 'FirstStartState(type: $type, isLoginView: $isLoginView)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstStartState &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isLoginView, isLoginView) ||
                other.isLoginView == isLoginView));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, isLoginView);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirstStartStateCopyWith<_$_FirstStartState> get copyWith =>
      __$$_FirstStartStateCopyWithImpl<_$_FirstStartState>(this, _$identity);
}

abstract class _FirstStartState implements FirstStartState {
  const factory _FirstStartState(
      {required final StateType type,
      required final bool isLoginView}) = _$_FirstStartState;

  @override
  StateType get type;
  @override
  bool get isLoginView;
  @override
  @JsonKey(ignore: true)
  _$$_FirstStartStateCopyWith<_$_FirstStartState> get copyWith =>
      throw _privateConstructorUsedError;
}
