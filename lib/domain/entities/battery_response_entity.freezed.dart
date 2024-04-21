// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battery_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BatteryResponseEntity _$BatteryResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _BatteryResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$BatteryResponseEntity {
  @JsonKey(name: 'battery_value')
  int? get batteryValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BatteryResponseEntityCopyWith<BatteryResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BatteryResponseEntityCopyWith<$Res> {
  factory $BatteryResponseEntityCopyWith(BatteryResponseEntity value,
          $Res Function(BatteryResponseEntity) then) =
      _$BatteryResponseEntityCopyWithImpl<$Res, BatteryResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'battery_value') int? batteryValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$BatteryResponseEntityCopyWithImpl<$Res,
        $Val extends BatteryResponseEntity>
    implements $BatteryResponseEntityCopyWith<$Res> {
  _$BatteryResponseEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$BatteryResponseEntityImplCopyWith<$Res>
    implements $BatteryResponseEntityCopyWith<$Res> {
  factory _$$BatteryResponseEntityImplCopyWith(
          _$BatteryResponseEntityImpl value,
          $Res Function(_$BatteryResponseEntityImpl) then) =
      __$$BatteryResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'battery_value') int? batteryValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$BatteryResponseEntityImplCopyWithImpl<$Res>
    extends _$BatteryResponseEntityCopyWithImpl<$Res,
        _$BatteryResponseEntityImpl>
    implements _$$BatteryResponseEntityImplCopyWith<$Res> {
  __$$BatteryResponseEntityImplCopyWithImpl(_$BatteryResponseEntityImpl _value,
      $Res Function(_$BatteryResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? batteryValue = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BatteryResponseEntityImpl(
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
class _$BatteryResponseEntityImpl implements _BatteryResponseEntity {
  const _$BatteryResponseEntityImpl(
      {@JsonKey(name: 'battery_value') this.batteryValue,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$BatteryResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$BatteryResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'battery_value')
  final int? batteryValue;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'BatteryResponseEntity(batteryValue: $batteryValue, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BatteryResponseEntityImpl &&
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
  _$$BatteryResponseEntityImplCopyWith<_$BatteryResponseEntityImpl>
      get copyWith => __$$BatteryResponseEntityImplCopyWithImpl<
          _$BatteryResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BatteryResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _BatteryResponseEntity implements BatteryResponseEntity {
  const factory _BatteryResponseEntity(
          {@JsonKey(name: 'battery_value') final int? batteryValue,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$BatteryResponseEntityImpl;

  factory _BatteryResponseEntity.fromJson(Map<String, dynamic> json) =
      _$BatteryResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'battery_value')
  int? get batteryValue;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BatteryResponseEntityImplCopyWith<_$BatteryResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
