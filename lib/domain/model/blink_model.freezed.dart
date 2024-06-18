// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blink_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlinkModel _$BlinkModelFromJson(Map<String, dynamic> json) {
  return _BlinkModel.fromJson(json);
}

/// @nodoc
mixin _$BlinkModel {
  @JsonKey(name: 'blink_value')
  int? get blinkValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'blink_duration')
  double? get blinkDuration => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlinkModelCopyWith<BlinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlinkModelCopyWith<$Res> {
  factory $BlinkModelCopyWith(
          BlinkModel value, $Res Function(BlinkModel) then) =
      _$BlinkModelCopyWithImpl<$Res, BlinkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'blink_value') int? blinkValue,
      @JsonKey(name: 'blink_duration') double? blinkDuration,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$BlinkModelCopyWithImpl<$Res, $Val extends BlinkModel>
    implements $BlinkModelCopyWith<$Res> {
  _$BlinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blinkValue = freezed,
    Object? blinkDuration = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      blinkValue: freezed == blinkValue
          ? _value.blinkValue
          : blinkValue // ignore: cast_nullable_to_non_nullable
              as int?,
      blinkDuration: freezed == blinkDuration
          ? _value.blinkDuration
          : blinkDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlinkModelImplCopyWith<$Res>
    implements $BlinkModelCopyWith<$Res> {
  factory _$$BlinkModelImplCopyWith(
          _$BlinkModelImpl value, $Res Function(_$BlinkModelImpl) then) =
      __$$BlinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'blink_value') int? blinkValue,
      @JsonKey(name: 'blink_duration') double? blinkDuration,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$BlinkModelImplCopyWithImpl<$Res>
    extends _$BlinkModelCopyWithImpl<$Res, _$BlinkModelImpl>
    implements _$$BlinkModelImplCopyWith<$Res> {
  __$$BlinkModelImplCopyWithImpl(
      _$BlinkModelImpl _value, $Res Function(_$BlinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blinkValue = freezed,
    Object? blinkDuration = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$BlinkModelImpl(
      blinkValue: freezed == blinkValue
          ? _value.blinkValue
          : blinkValue // ignore: cast_nullable_to_non_nullable
              as int?,
      blinkDuration: freezed == blinkDuration
          ? _value.blinkDuration
          : blinkDuration // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlinkModelImpl implements _BlinkModel {
  const _$BlinkModelImpl(
      {@JsonKey(name: 'blink_value') this.blinkValue,
      @JsonKey(name: 'blink_duration') this.blinkDuration,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$BlinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlinkModelImplFromJson(json);

  @override
  @JsonKey(name: 'blink_value')
  final int? blinkValue;
  @override
  @JsonKey(name: 'blink_duration')
  final double? blinkDuration;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'BlinkModel(blinkValue: $blinkValue, blinkDuration: $blinkDuration, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlinkModelImpl &&
            (identical(other.blinkValue, blinkValue) ||
                other.blinkValue == blinkValue) &&
            (identical(other.blinkDuration, blinkDuration) ||
                other.blinkDuration == blinkDuration) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, blinkValue, blinkDuration, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlinkModelImplCopyWith<_$BlinkModelImpl> get copyWith =>
      __$$BlinkModelImplCopyWithImpl<_$BlinkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlinkModelImplToJson(
      this,
    );
  }
}

abstract class _BlinkModel implements BlinkModel {
  const factory _BlinkModel(
      {@JsonKey(name: 'blink_value') final int? blinkValue,
      @JsonKey(name: 'blink_duration') final double? blinkDuration,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$BlinkModelImpl;

  factory _BlinkModel.fromJson(Map<String, dynamic> json) =
      _$BlinkModelImpl.fromJson;

  @override
  @JsonKey(name: 'blink_value')
  int? get blinkValue;
  @override
  @JsonKey(name: 'blink_duration')
  double? get blinkDuration;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$BlinkModelImplCopyWith<_$BlinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
