// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'heart_beat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HeartBeatModel _$HeartBeatModelFromJson(Map<String, dynamic> json) {
  return _HeartBeatModel.fromJson(json);
}

/// @nodoc
mixin _$HeartBeatModel {
  @JsonKey(name: 'bpm_value')
  int? get bpmValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_prediction')
  String? get isPrediction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeartBeatModelCopyWith<HeartBeatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartBeatModelCopyWith<$Res> {
  factory $HeartBeatModelCopyWith(
          HeartBeatModel value, $Res Function(HeartBeatModel) then) =
      _$HeartBeatModelCopyWithImpl<$Res, HeartBeatModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bpm_value') int? bpmValue,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'is_prediction') String? isPrediction});
}

/// @nodoc
class _$HeartBeatModelCopyWithImpl<$Res, $Val extends HeartBeatModel>
    implements $HeartBeatModelCopyWith<$Res> {
  _$HeartBeatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpmValue = freezed,
    Object? createdAt = freezed,
    Object? isPrediction = freezed,
  }) {
    return _then(_value.copyWith(
      bpmValue: freezed == bpmValue
          ? _value.bpmValue
          : bpmValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrediction: freezed == isPrediction
          ? _value.isPrediction
          : isPrediction // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HeartBeatModelImplCopyWith<$Res>
    implements $HeartBeatModelCopyWith<$Res> {
  factory _$$HeartBeatModelImplCopyWith(_$HeartBeatModelImpl value,
          $Res Function(_$HeartBeatModelImpl) then) =
      __$$HeartBeatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bpm_value') int? bpmValue,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'is_prediction') String? isPrediction});
}

/// @nodoc
class __$$HeartBeatModelImplCopyWithImpl<$Res>
    extends _$HeartBeatModelCopyWithImpl<$Res, _$HeartBeatModelImpl>
    implements _$$HeartBeatModelImplCopyWith<$Res> {
  __$$HeartBeatModelImplCopyWithImpl(
      _$HeartBeatModelImpl _value, $Res Function(_$HeartBeatModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bpmValue = freezed,
    Object? createdAt = freezed,
    Object? isPrediction = freezed,
  }) {
    return _then(_$HeartBeatModelImpl(
      bpmValue: freezed == bpmValue
          ? _value.bpmValue
          : bpmValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrediction: freezed == isPrediction
          ? _value.isPrediction
          : isPrediction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HeartBeatModelImpl implements _HeartBeatModel {
  const _$HeartBeatModelImpl(
      {@JsonKey(name: 'bpm_value') this.bpmValue,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'is_prediction') this.isPrediction});

  factory _$HeartBeatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HeartBeatModelImplFromJson(json);

  @override
  @JsonKey(name: 'bpm_value')
  final int? bpmValue;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'is_prediction')
  final String? isPrediction;

  @override
  String toString() {
    return 'HeartBeatModel(bpmValue: $bpmValue, createdAt: $createdAt, isPrediction: $isPrediction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeartBeatModelImpl &&
            (identical(other.bpmValue, bpmValue) ||
                other.bpmValue == bpmValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isPrediction, isPrediction) ||
                other.isPrediction == isPrediction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, bpmValue, createdAt, isPrediction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HeartBeatModelImplCopyWith<_$HeartBeatModelImpl> get copyWith =>
      __$$HeartBeatModelImplCopyWithImpl<_$HeartBeatModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HeartBeatModelImplToJson(
      this,
    );
  }
}

abstract class _HeartBeatModel implements HeartBeatModel {
  const factory _HeartBeatModel(
          {@JsonKey(name: 'bpm_value') final int? bpmValue,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'is_prediction') final String? isPrediction}) =
      _$HeartBeatModelImpl;

  factory _HeartBeatModel.fromJson(Map<String, dynamic> json) =
      _$HeartBeatModelImpl.fromJson;

  @override
  @JsonKey(name: 'bpm_value')
  int? get bpmValue;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'is_prediction')
  String? get isPrediction;
  @override
  @JsonKey(ignore: true)
  _$$HeartBeatModelImplCopyWith<_$HeartBeatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
