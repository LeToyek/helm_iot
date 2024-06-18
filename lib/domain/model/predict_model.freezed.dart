// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'predict_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PredictModel _$PredictModelFromJson(Map<String, dynamic> json) {
  return _PredictModel.fromJson(json);
}

/// @nodoc
mixin _$PredictModel {
  int? get avgBPMValue => throw _privateConstructorUsedError;
  int? get bpmSleepyThreshold => throw _privateConstructorUsedError;
  int? get avgBlinkValue => throw _privateConstructorUsedError;
  int? get blinkSleepyThreshold => throw _privateConstructorUsedError;
  List<HeartBeatModel>? get heartBeatsMinutes =>
      throw _privateConstructorUsedError;
  List<BlinkModel>? get blinkModels => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PredictModelCopyWith<PredictModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PredictModelCopyWith<$Res> {
  factory $PredictModelCopyWith(
          PredictModel value, $Res Function(PredictModel) then) =
      _$PredictModelCopyWithImpl<$Res, PredictModel>;
  @useResult
  $Res call(
      {int? avgBPMValue,
      int? bpmSleepyThreshold,
      int? avgBlinkValue,
      int? blinkSleepyThreshold,
      List<HeartBeatModel>? heartBeatsMinutes,
      List<BlinkModel>? blinkModels,
      String? status,
      String? createdAt});
}

/// @nodoc
class _$PredictModelCopyWithImpl<$Res, $Val extends PredictModel>
    implements $PredictModelCopyWith<$Res> {
  _$PredictModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgBPMValue = freezed,
    Object? bpmSleepyThreshold = freezed,
    Object? avgBlinkValue = freezed,
    Object? blinkSleepyThreshold = freezed,
    Object? heartBeatsMinutes = freezed,
    Object? blinkModels = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      avgBPMValue: freezed == avgBPMValue
          ? _value.avgBPMValue
          : avgBPMValue // ignore: cast_nullable_to_non_nullable
              as int?,
      bpmSleepyThreshold: freezed == bpmSleepyThreshold
          ? _value.bpmSleepyThreshold
          : bpmSleepyThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      avgBlinkValue: freezed == avgBlinkValue
          ? _value.avgBlinkValue
          : avgBlinkValue // ignore: cast_nullable_to_non_nullable
              as int?,
      blinkSleepyThreshold: freezed == blinkSleepyThreshold
          ? _value.blinkSleepyThreshold
          : blinkSleepyThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      heartBeatsMinutes: freezed == heartBeatsMinutes
          ? _value.heartBeatsMinutes
          : heartBeatsMinutes // ignore: cast_nullable_to_non_nullable
              as List<HeartBeatModel>?,
      blinkModels: freezed == blinkModels
          ? _value.blinkModels
          : blinkModels // ignore: cast_nullable_to_non_nullable
              as List<BlinkModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PredictModelImplCopyWith<$Res>
    implements $PredictModelCopyWith<$Res> {
  factory _$$PredictModelImplCopyWith(
          _$PredictModelImpl value, $Res Function(_$PredictModelImpl) then) =
      __$$PredictModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? avgBPMValue,
      int? bpmSleepyThreshold,
      int? avgBlinkValue,
      int? blinkSleepyThreshold,
      List<HeartBeatModel>? heartBeatsMinutes,
      List<BlinkModel>? blinkModels,
      String? status,
      String? createdAt});
}

/// @nodoc
class __$$PredictModelImplCopyWithImpl<$Res>
    extends _$PredictModelCopyWithImpl<$Res, _$PredictModelImpl>
    implements _$$PredictModelImplCopyWith<$Res> {
  __$$PredictModelImplCopyWithImpl(
      _$PredictModelImpl _value, $Res Function(_$PredictModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgBPMValue = freezed,
    Object? bpmSleepyThreshold = freezed,
    Object? avgBlinkValue = freezed,
    Object? blinkSleepyThreshold = freezed,
    Object? heartBeatsMinutes = freezed,
    Object? blinkModels = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$PredictModelImpl(
      avgBPMValue: freezed == avgBPMValue
          ? _value.avgBPMValue
          : avgBPMValue // ignore: cast_nullable_to_non_nullable
              as int?,
      bpmSleepyThreshold: freezed == bpmSleepyThreshold
          ? _value.bpmSleepyThreshold
          : bpmSleepyThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      avgBlinkValue: freezed == avgBlinkValue
          ? _value.avgBlinkValue
          : avgBlinkValue // ignore: cast_nullable_to_non_nullable
              as int?,
      blinkSleepyThreshold: freezed == blinkSleepyThreshold
          ? _value.blinkSleepyThreshold
          : blinkSleepyThreshold // ignore: cast_nullable_to_non_nullable
              as int?,
      heartBeatsMinutes: freezed == heartBeatsMinutes
          ? _value._heartBeatsMinutes
          : heartBeatsMinutes // ignore: cast_nullable_to_non_nullable
              as List<HeartBeatModel>?,
      blinkModels: freezed == blinkModels
          ? _value._blinkModels
          : blinkModels // ignore: cast_nullable_to_non_nullable
              as List<BlinkModel>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PredictModelImpl implements _PredictModel {
  const _$PredictModelImpl(
      {this.avgBPMValue,
      this.bpmSleepyThreshold,
      this.avgBlinkValue,
      this.blinkSleepyThreshold,
      final List<HeartBeatModel>? heartBeatsMinutes,
      final List<BlinkModel>? blinkModels,
      this.status,
      this.createdAt})
      : _heartBeatsMinutes = heartBeatsMinutes,
        _blinkModels = blinkModels;

  factory _$PredictModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PredictModelImplFromJson(json);

  @override
  final int? avgBPMValue;
  @override
  final int? bpmSleepyThreshold;
  @override
  final int? avgBlinkValue;
  @override
  final int? blinkSleepyThreshold;
  final List<HeartBeatModel>? _heartBeatsMinutes;
  @override
  List<HeartBeatModel>? get heartBeatsMinutes {
    final value = _heartBeatsMinutes;
    if (value == null) return null;
    if (_heartBeatsMinutes is EqualUnmodifiableListView)
      return _heartBeatsMinutes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BlinkModel>? _blinkModels;
  @override
  List<BlinkModel>? get blinkModels {
    final value = _blinkModels;
    if (value == null) return null;
    if (_blinkModels is EqualUnmodifiableListView) return _blinkModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? status;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'PredictModel(avgBPMValue: $avgBPMValue, bpmSleepyThreshold: $bpmSleepyThreshold, avgBlinkValue: $avgBlinkValue, blinkSleepyThreshold: $blinkSleepyThreshold, heartBeatsMinutes: $heartBeatsMinutes, blinkModels: $blinkModels, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PredictModelImpl &&
            (identical(other.avgBPMValue, avgBPMValue) ||
                other.avgBPMValue == avgBPMValue) &&
            (identical(other.bpmSleepyThreshold, bpmSleepyThreshold) ||
                other.bpmSleepyThreshold == bpmSleepyThreshold) &&
            (identical(other.avgBlinkValue, avgBlinkValue) ||
                other.avgBlinkValue == avgBlinkValue) &&
            (identical(other.blinkSleepyThreshold, blinkSleepyThreshold) ||
                other.blinkSleepyThreshold == blinkSleepyThreshold) &&
            const DeepCollectionEquality()
                .equals(other._heartBeatsMinutes, _heartBeatsMinutes) &&
            const DeepCollectionEquality()
                .equals(other._blinkModels, _blinkModels) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      avgBPMValue,
      bpmSleepyThreshold,
      avgBlinkValue,
      blinkSleepyThreshold,
      const DeepCollectionEquality().hash(_heartBeatsMinutes),
      const DeepCollectionEquality().hash(_blinkModels),
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PredictModelImplCopyWith<_$PredictModelImpl> get copyWith =>
      __$$PredictModelImplCopyWithImpl<_$PredictModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PredictModelImplToJson(
      this,
    );
  }
}

abstract class _PredictModel implements PredictModel {
  const factory _PredictModel(
      {final int? avgBPMValue,
      final int? bpmSleepyThreshold,
      final int? avgBlinkValue,
      final int? blinkSleepyThreshold,
      final List<HeartBeatModel>? heartBeatsMinutes,
      final List<BlinkModel>? blinkModels,
      final String? status,
      final String? createdAt}) = _$PredictModelImpl;

  factory _PredictModel.fromJson(Map<String, dynamic> json) =
      _$PredictModelImpl.fromJson;

  @override
  int? get avgBPMValue;
  @override
  int? get bpmSleepyThreshold;
  @override
  int? get avgBlinkValue;
  @override
  int? get blinkSleepyThreshold;
  @override
  List<HeartBeatModel>? get heartBeatsMinutes;
  @override
  List<BlinkModel>? get blinkModels;
  @override
  String? get status;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PredictModelImplCopyWith<_$PredictModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
