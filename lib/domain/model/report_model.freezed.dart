// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportModel _$ReportModelFromJson(Map<String, dynamic> json) {
  return _ReportModel.fromJson(json);
}

/// @nodoc
mixin _$ReportModel {
  int? get avgBPMValue => throw _privateConstructorUsedError;
  int? get avgOxygenValue => throw _privateConstructorUsedError;
  int? get avgBlinkValue => throw _privateConstructorUsedError;
  List<HeartBeatModel>? get heartBeatsMinutes =>
      throw _privateConstructorUsedError;
  List<BlinkModel>? get blinkModels => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportModelCopyWith<ReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportModelCopyWith<$Res> {
  factory $ReportModelCopyWith(
          ReportModel value, $Res Function(ReportModel) then) =
      _$ReportModelCopyWithImpl<$Res, ReportModel>;
  @useResult
  $Res call(
      {int? avgBPMValue,
      int? avgOxygenValue,
      int? avgBlinkValue,
      List<HeartBeatModel>? heartBeatsMinutes,
      List<BlinkModel>? blinkModels,
      String? status,
      String? createdAt});
}

/// @nodoc
class _$ReportModelCopyWithImpl<$Res, $Val extends ReportModel>
    implements $ReportModelCopyWith<$Res> {
  _$ReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgBPMValue = freezed,
    Object? avgOxygenValue = freezed,
    Object? avgBlinkValue = freezed,
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
      avgOxygenValue: freezed == avgOxygenValue
          ? _value.avgOxygenValue
          : avgOxygenValue // ignore: cast_nullable_to_non_nullable
              as int?,
      avgBlinkValue: freezed == avgBlinkValue
          ? _value.avgBlinkValue
          : avgBlinkValue // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ReportModelImplCopyWith<$Res>
    implements $ReportModelCopyWith<$Res> {
  factory _$$ReportModelImplCopyWith(
          _$ReportModelImpl value, $Res Function(_$ReportModelImpl) then) =
      __$$ReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? avgBPMValue,
      int? avgOxygenValue,
      int? avgBlinkValue,
      List<HeartBeatModel>? heartBeatsMinutes,
      List<BlinkModel>? blinkModels,
      String? status,
      String? createdAt});
}

/// @nodoc
class __$$ReportModelImplCopyWithImpl<$Res>
    extends _$ReportModelCopyWithImpl<$Res, _$ReportModelImpl>
    implements _$$ReportModelImplCopyWith<$Res> {
  __$$ReportModelImplCopyWithImpl(
      _$ReportModelImpl _value, $Res Function(_$ReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgBPMValue = freezed,
    Object? avgOxygenValue = freezed,
    Object? avgBlinkValue = freezed,
    Object? heartBeatsMinutes = freezed,
    Object? blinkModels = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$ReportModelImpl(
      avgBPMValue: freezed == avgBPMValue
          ? _value.avgBPMValue
          : avgBPMValue // ignore: cast_nullable_to_non_nullable
              as int?,
      avgOxygenValue: freezed == avgOxygenValue
          ? _value.avgOxygenValue
          : avgOxygenValue // ignore: cast_nullable_to_non_nullable
              as int?,
      avgBlinkValue: freezed == avgBlinkValue
          ? _value.avgBlinkValue
          : avgBlinkValue // ignore: cast_nullable_to_non_nullable
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
class _$ReportModelImpl implements _ReportModel {
  const _$ReportModelImpl(
      {this.avgBPMValue,
      this.avgOxygenValue,
      this.avgBlinkValue,
      final List<HeartBeatModel>? heartBeatsMinutes,
      final List<BlinkModel>? blinkModels,
      this.status,
      this.createdAt})
      : _heartBeatsMinutes = heartBeatsMinutes,
        _blinkModels = blinkModels;

  factory _$ReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportModelImplFromJson(json);

  @override
  final int? avgBPMValue;
  @override
  final int? avgOxygenValue;
  @override
  final int? avgBlinkValue;
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
    return 'ReportModel(avgBPMValue: $avgBPMValue, avgOxygenValue: $avgOxygenValue, avgBlinkValue: $avgBlinkValue, heartBeatsMinutes: $heartBeatsMinutes, blinkModels: $blinkModels, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportModelImpl &&
            (identical(other.avgBPMValue, avgBPMValue) ||
                other.avgBPMValue == avgBPMValue) &&
            (identical(other.avgOxygenValue, avgOxygenValue) ||
                other.avgOxygenValue == avgOxygenValue) &&
            (identical(other.avgBlinkValue, avgBlinkValue) ||
                other.avgBlinkValue == avgBlinkValue) &&
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
      avgOxygenValue,
      avgBlinkValue,
      const DeepCollectionEquality().hash(_heartBeatsMinutes),
      const DeepCollectionEquality().hash(_blinkModels),
      status,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      __$$ReportModelImplCopyWithImpl<_$ReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportModelImplToJson(
      this,
    );
  }
}

abstract class _ReportModel implements ReportModel {
  const factory _ReportModel(
      {final int? avgBPMValue,
      final int? avgOxygenValue,
      final int? avgBlinkValue,
      final List<HeartBeatModel>? heartBeatsMinutes,
      final List<BlinkModel>? blinkModels,
      final String? status,
      final String? createdAt}) = _$ReportModelImpl;

  factory _ReportModel.fromJson(Map<String, dynamic> json) =
      _$ReportModelImpl.fromJson;

  @override
  int? get avgBPMValue;
  @override
  int? get avgOxygenValue;
  @override
  int? get avgBlinkValue;
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
  _$$ReportModelImplCopyWith<_$ReportModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
