// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BatteryModel _$BatteryModelFromJson(Map<String, dynamic> json) {
  return _BatteryModel.fromJson(json);
}

/// @nodoc
mixin _$BatteryModel {
  @JsonKey(name: 'battery_value')
  int? get batteryValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteryModelCopyWith<BatteryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryModelCopyWith<$Res> {
  factory $BatteryModelCopyWith(
          BatteryModel value, $Res Function(BatteryModel) then) =
      _$BatteryModelCopyWithImpl<$Res, BatteryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'battery_value') int? batteryValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$BatteryModelCopyWithImpl<$Res, $Val extends BatteryModel>
    implements $BatteryModelCopyWith<$Res> {
  _$BatteryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryValue = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      batteryValue: freezed == batteryValue
          ? _value.batteryValue
          : batteryValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BatteryModelImplCopyWith<$Res>
    implements $BatteryModelCopyWith<$Res> {
  factory _$$BatteryModelImplCopyWith(
          _$BatteryModelImpl value, $Res Function(_$BatteryModelImpl) then) =
      __$$BatteryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'battery_value') int? batteryValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$BatteryModelImplCopyWithImpl<$Res>
    extends _$BatteryModelCopyWithImpl<$Res, _$BatteryModelImpl>
    implements _$$BatteryModelImplCopyWith<$Res> {
  __$$BatteryModelImplCopyWithImpl(
      _$BatteryModelImpl _value, $Res Function(_$BatteryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryValue = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BatteryModelImpl(
      batteryValue: freezed == batteryValue
          ? _value.batteryValue
          : batteryValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BatteryModelImpl implements _BatteryModel {
  const _$BatteryModelImpl(
      {@JsonKey(name: 'battery_value') this.batteryValue,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$BatteryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteryModelImplFromJson(json);

  @override
  @JsonKey(name: 'battery_value')
  final int? batteryValue;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'BatteryModel(batteryValue: $batteryValue, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteryModelImpl &&
            (identical(other.batteryValue, batteryValue) ||
                other.batteryValue == batteryValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, batteryValue, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BatteryModelImplCopyWith<_$BatteryModelImpl> get copyWith =>
      __$$BatteryModelImplCopyWithImpl<_$BatteryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteryModelImplToJson(
      this,
    );
  }
}

abstract class _BatteryModel implements BatteryModel {
  const factory _BatteryModel(
          {@JsonKey(name: 'battery_value') final int? batteryValue,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$BatteryModelImpl;

  factory _BatteryModel.fromJson(Map<String, dynamic> json) =
      _$BatteryModelImpl.fromJson;

  @override
  @JsonKey(name: 'battery_value')
  int? get batteryValue;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BatteryModelImplCopyWith<_$BatteryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
