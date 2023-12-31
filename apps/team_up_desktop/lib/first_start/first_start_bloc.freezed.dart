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
    required TResult Function(FirstStartPageEnum firstStartPageEnum) onNewPageRequest,
    required TResult Function(bool startLoading) onStartLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult? Function(bool startLoading)? onStartLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult Function(bool startLoading)? onStartLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewPageRequest value) onNewPageRequest,
    required TResult Function(_OnStartLoading value) onStartLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult? Function(_OnStartLoading value)? onStartLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult Function(_OnStartLoading value)? onStartLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStartEventCopyWith<$Res> {
  factory $FirstStartEventCopyWith(FirstStartEvent value, $Res Function(FirstStartEvent) then) =
      _$FirstStartEventCopyWithImpl<$Res, FirstStartEvent>;
}

/// @nodoc
class _$FirstStartEventCopyWithImpl<$Res, $Val extends FirstStartEvent> implements $FirstStartEventCopyWith<$Res> {
  _$FirstStartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnNewPageRequestImplCopyWith<$Res> {
  factory _$$OnNewPageRequestImplCopyWith(_$OnNewPageRequestImpl value, $Res Function(_$OnNewPageRequestImpl) then) =
      __$$OnNewPageRequestImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FirstStartPageEnum firstStartPageEnum});
}

/// @nodoc
class __$$OnNewPageRequestImplCopyWithImpl<$Res> extends _$FirstStartEventCopyWithImpl<$Res, _$OnNewPageRequestImpl>
    implements _$$OnNewPageRequestImplCopyWith<$Res> {
  __$$OnNewPageRequestImplCopyWithImpl(_$OnNewPageRequestImpl _value, $Res Function(_$OnNewPageRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstStartPageEnum = null,
  }) {
    return _then(_$OnNewPageRequestImpl(
      null == firstStartPageEnum
          ? _value.firstStartPageEnum
          : firstStartPageEnum // ignore: cast_nullable_to_non_nullable
              as FirstStartPageEnum,
    ));
  }
}

/// @nodoc

class _$OnNewPageRequestImpl implements _OnNewPageRequest {
  const _$OnNewPageRequestImpl(this.firstStartPageEnum);

  @override
  final FirstStartPageEnum firstStartPageEnum;

  @override
  String toString() {
    return 'FirstStartEvent.onNewPageRequest(firstStartPageEnum: $firstStartPageEnum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNewPageRequestImpl &&
            (identical(other.firstStartPageEnum, firstStartPageEnum) ||
                other.firstStartPageEnum == firstStartPageEnum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstStartPageEnum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNewPageRequestImplCopyWith<_$OnNewPageRequestImpl> get copyWith =>
      __$$OnNewPageRequestImplCopyWithImpl<_$OnNewPageRequestImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirstStartPageEnum firstStartPageEnum) onNewPageRequest,
    required TResult Function(bool startLoading) onStartLoading,
  }) {
    return onNewPageRequest(firstStartPageEnum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult? Function(bool startLoading)? onStartLoading,
  }) {
    return onNewPageRequest?.call(firstStartPageEnum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult Function(bool startLoading)? onStartLoading,
    required TResult orElse(),
  }) {
    if (onNewPageRequest != null) {
      return onNewPageRequest(firstStartPageEnum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewPageRequest value) onNewPageRequest,
    required TResult Function(_OnStartLoading value) onStartLoading,
  }) {
    return onNewPageRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult? Function(_OnStartLoading value)? onStartLoading,
  }) {
    return onNewPageRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult Function(_OnStartLoading value)? onStartLoading,
    required TResult orElse(),
  }) {
    if (onNewPageRequest != null) {
      return onNewPageRequest(this);
    }
    return orElse();
  }
}

abstract class _OnNewPageRequest implements FirstStartEvent {
  const factory _OnNewPageRequest(final FirstStartPageEnum firstStartPageEnum) = _$OnNewPageRequestImpl;

  FirstStartPageEnum get firstStartPageEnum;
  @JsonKey(ignore: true)
  _$$OnNewPageRequestImplCopyWith<_$OnNewPageRequestImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnStartLoadingImplCopyWith<$Res> {
  factory _$$OnStartLoadingImplCopyWith(_$OnStartLoadingImpl value, $Res Function(_$OnStartLoadingImpl) then) =
      __$$OnStartLoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool startLoading});
}

/// @nodoc
class __$$OnStartLoadingImplCopyWithImpl<$Res> extends _$FirstStartEventCopyWithImpl<$Res, _$OnStartLoadingImpl>
    implements _$$OnStartLoadingImplCopyWith<$Res> {
  __$$OnStartLoadingImplCopyWithImpl(_$OnStartLoadingImpl _value, $Res Function(_$OnStartLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startLoading = null,
  }) {
    return _then(_$OnStartLoadingImpl(
      null == startLoading
          ? _value.startLoading
          : startLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnStartLoadingImpl implements _OnStartLoading {
  const _$OnStartLoadingImpl(this.startLoading);

  @override
  final bool startLoading;

  @override
  String toString() {
    return 'FirstStartEvent.onStartLoading(startLoading: $startLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnStartLoadingImpl &&
            (identical(other.startLoading, startLoading) || other.startLoading == startLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnStartLoadingImplCopyWith<_$OnStartLoadingImpl> get copyWith =>
      __$$OnStartLoadingImplCopyWithImpl<_$OnStartLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FirstStartPageEnum firstStartPageEnum) onNewPageRequest,
    required TResult Function(bool startLoading) onStartLoading,
  }) {
    return onStartLoading(startLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult? Function(bool startLoading)? onStartLoading,
  }) {
    return onStartLoading?.call(startLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FirstStartPageEnum firstStartPageEnum)? onNewPageRequest,
    TResult Function(bool startLoading)? onStartLoading,
    required TResult orElse(),
  }) {
    if (onStartLoading != null) {
      return onStartLoading(startLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnNewPageRequest value) onNewPageRequest,
    required TResult Function(_OnStartLoading value) onStartLoading,
  }) {
    return onStartLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult? Function(_OnStartLoading value)? onStartLoading,
  }) {
    return onStartLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnNewPageRequest value)? onNewPageRequest,
    TResult Function(_OnStartLoading value)? onStartLoading,
    required TResult orElse(),
  }) {
    if (onStartLoading != null) {
      return onStartLoading(this);
    }
    return orElse();
  }
}

abstract class _OnStartLoading implements FirstStartEvent {
  const factory _OnStartLoading(final bool startLoading) = _$OnStartLoadingImpl;

  bool get startLoading;
  @JsonKey(ignore: true)
  _$$OnStartLoadingImplCopyWith<_$OnStartLoadingImpl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FirstStartState {
  StateType get type => throw _privateConstructorUsedError;
  FirstStartPageEnum get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirstStartStateCopyWith<FirstStartState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirstStartStateCopyWith<$Res> {
  factory $FirstStartStateCopyWith(FirstStartState value, $Res Function(FirstStartState) then) =
      _$FirstStartStateCopyWithImpl<$Res, FirstStartState>;
  @useResult
  $Res call({StateType type, FirstStartPageEnum currentPage});
}

/// @nodoc
class _$FirstStartStateCopyWithImpl<$Res, $Val extends FirstStartState> implements $FirstStartStateCopyWith<$Res> {
  _$FirstStartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as FirstStartPageEnum,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirstStartStateImplCopyWith<$Res> implements $FirstStartStateCopyWith<$Res> {
  factory _$$FirstStartStateImplCopyWith(_$FirstStartStateImpl value, $Res Function(_$FirstStartStateImpl) then) =
      __$$FirstStartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateType type, FirstStartPageEnum currentPage});
}

/// @nodoc
class __$$FirstStartStateImplCopyWithImpl<$Res> extends _$FirstStartStateCopyWithImpl<$Res, _$FirstStartStateImpl>
    implements _$$FirstStartStateImplCopyWith<$Res> {
  __$$FirstStartStateImplCopyWithImpl(_$FirstStartStateImpl _value, $Res Function(_$FirstStartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? currentPage = null,
  }) {
    return _then(_$FirstStartStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StateType,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as FirstStartPageEnum,
    ));
  }
}

/// @nodoc

class _$FirstStartStateImpl implements _FirstStartState {
  const _$FirstStartStateImpl({required this.type, required this.currentPage});

  @override
  final StateType type;
  @override
  final FirstStartPageEnum currentPage;

  @override
  String toString() {
    return 'FirstStartState(type: $type, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstStartStateImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.currentPage, currentPage) || other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstStartStateImplCopyWith<_$FirstStartStateImpl> get copyWith =>
      __$$FirstStartStateImplCopyWithImpl<_$FirstStartStateImpl>(this, _$identity);
}

abstract class _FirstStartState implements FirstStartState {
  const factory _FirstStartState({required final StateType type, required final FirstStartPageEnum currentPage}) =
      _$FirstStartStateImpl;

  @override
  StateType get type;
  @override
  FirstStartPageEnum get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$FirstStartStateImplCopyWith<_$FirstStartStateImpl> get copyWith => throw _privateConstructorUsedError;
}
