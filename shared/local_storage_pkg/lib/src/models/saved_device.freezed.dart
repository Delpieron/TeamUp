// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_device.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedDevice _$SavedDeviceFromJson(Map<String, dynamic> json) {
  return _SavedDevice.fromJson(json);
}

/// @nodoc
mixin _$SavedDevice {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedDeviceCopyWith<SavedDevice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedDeviceCopyWith<$Res> {
  factory $SavedDeviceCopyWith(SavedDevice value, $Res Function(SavedDevice) then) =
      _$SavedDeviceCopyWithImpl<$Res, SavedDevice>;
  @useResult
  $Res call({String name, String address, String fullName});
}

/// @nodoc
class _$SavedDeviceCopyWithImpl<$Res, $Val extends SavedDevice> implements $SavedDeviceCopyWith<$Res> {
  _$SavedDeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? fullName = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SavedDeviceImplCopyWith<$Res> implements $SavedDeviceCopyWith<$Res> {
  factory _$$SavedDeviceImplCopyWith(_$SavedDeviceImpl value, $Res Function(_$SavedDeviceImpl) then) =
      __$$SavedDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String address, String fullName});
}

/// @nodoc
class __$$SavedDeviceImplCopyWithImpl<$Res> extends _$SavedDeviceCopyWithImpl<$Res, _$SavedDeviceImpl>
    implements _$$SavedDeviceImplCopyWith<$Res> {
  __$$SavedDeviceImplCopyWithImpl(_$SavedDeviceImpl _value, $Res Function(_$SavedDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? fullName = null,
  }) {
    return _then(_$SavedDeviceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SavedDeviceImpl implements _SavedDevice {
  const _$SavedDeviceImpl({required this.name, required this.address, required this.fullName});

  factory _$SavedDeviceImpl.fromJson(Map<String, dynamic> json) => _$$SavedDeviceImplFromJson(json);

  @override
  final String name;
  @override
  final String address;
  @override
  final String fullName;

  @override
  String toString() {
    return 'SavedDevice(name: $name, address: $address, fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavedDeviceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.fullName, fullName) || other.fullName == fullName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, address, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavedDeviceImplCopyWith<_$SavedDeviceImpl> get copyWith =>
      __$$SavedDeviceImplCopyWithImpl<_$SavedDeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SavedDeviceImplToJson(
      this,
    );
  }
}

abstract class _SavedDevice implements SavedDevice {
  const factory _SavedDevice(
      {required final String name, required final String address, required final String fullName}) = _$SavedDeviceImpl;

  factory _SavedDevice.fromJson(Map<String, dynamic> json) = _$SavedDeviceImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  String get fullName;
  @override
  @JsonKey(ignore: true)
  _$$SavedDeviceImplCopyWith<_$SavedDeviceImpl> get copyWith => throw _privateConstructorUsedError;
}
