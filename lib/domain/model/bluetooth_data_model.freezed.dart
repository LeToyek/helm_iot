// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bluetooth_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BluetoothDataModel _$BluetoothDataModelFromJson(Map<String, dynamic> json) {
  return _BluetoothDataModel.fromJson(json);
}

/// @nodoc
mixin _$BluetoothDataModel {
  @JsonKey(name: 'ppg_val')
  String? get ppgVal => throw _privateConstructorUsedError;
  @JsonKey(name: 'blink_count')
  String? get blinkCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'blink_duration')
  String? get blinkDuration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BluetoothDataModelCopyWith<BluetoothDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BluetoothDataModelCopyWith<$Res> {
  factory $BluetoothDataModelCopyWith(
          BluetoothDataModel value, $Res Function(BluetoothDataModel) then) =
      _$BluetoothDataModelCopyWithImpl<$Res, BluetoothDataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ppg_val') String? ppgVal,
      @JsonKey(name: 'blink_count') String? blinkCount,
      @JsonKey(name: 'blink_duration') String? blinkDuration});
}

/// @nodoc
class _$BluetoothDataModelCopyWithImpl<$Res, $Val extends BluetoothDataModel>
    implements $BluetoothDataModelCopyWith<$Res> {
  _$BluetoothDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ppgVal = freezed,
    Object? blinkCount = freezed,
    Object? blinkDuration = freezed,
  }) {
    return _then(_value.copyWith(
      ppgVal: freezed == ppgVal
          ? _value.ppgVal
          : ppgVal // ignore: cast_nullable_to_non_nullable
              as String?,
      blinkCount: freezed == blinkCount
          ? _value.blinkCount
          : blinkCount // ignore: cast_nullable_to_non_nullable
              as String?,
      blinkDuration: freezed == blinkDuration
          ? _value.blinkDuration
          : blinkDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BluetoothDataModelImplCopyWith<$Res>
    implements $BluetoothDataModelCopyWith<$Res> {
  factory _$$BluetoothDataModelImplCopyWith(_$BluetoothDataModelImpl value,
          $Res Function(_$BluetoothDataModelImpl) then) =
      __$$BluetoothDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ppg_val') String? ppgVal,
      @JsonKey(name: 'blink_count') String? blinkCount,
      @JsonKey(name: 'blink_duration') String? blinkDuration});
}

/// @nodoc
class __$$BluetoothDataModelImplCopyWithImpl<$Res>
    extends _$BluetoothDataModelCopyWithImpl<$Res, _$BluetoothDataModelImpl>
    implements _$$BluetoothDataModelImplCopyWith<$Res> {
  __$$BluetoothDataModelImplCopyWithImpl(_$BluetoothDataModelImpl _value,
      $Res Function(_$BluetoothDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ppgVal = freezed,
    Object? blinkCount = freezed,
    Object? blinkDuration = freezed,
  }) {
    return _then(_$BluetoothDataModelImpl(
      ppgVal: freezed == ppgVal
          ? _value.ppgVal
          : ppgVal // ignore: cast_nullable_to_non_nullable
              as String?,
      blinkCount: freezed == blinkCount
          ? _value.blinkCount
          : blinkCount // ignore: cast_nullable_to_non_nullable
              as String?,
      blinkDuration: freezed == blinkDuration
          ? _value.blinkDuration
          : blinkDuration // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BluetoothDataModelImpl implements _BluetoothDataModel {
  const _$BluetoothDataModelImpl(
      {@JsonKey(name: 'ppg_val') this.ppgVal,
      @JsonKey(name: 'blink_count') this.blinkCount,
      @JsonKey(name: 'blink_duration') this.blinkDuration});

  factory _$BluetoothDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BluetoothDataModelImplFromJson(json);

  @override
  @JsonKey(name: 'ppg_val')
  final String? ppgVal;
  @override
  @JsonKey(name: 'blink_count')
  final String? blinkCount;
  @override
  @JsonKey(name: 'blink_duration')
  final String? blinkDuration;

  @override
  String toString() {
    return 'BluetoothDataModel(ppgVal: $ppgVal, blinkCount: $blinkCount, blinkDuration: $blinkDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BluetoothDataModelImpl &&
            (identical(other.ppgVal, ppgVal) || other.ppgVal == ppgVal) &&
            (identical(other.blinkCount, blinkCount) ||
                other.blinkCount == blinkCount) &&
            (identical(other.blinkDuration, blinkDuration) ||
                other.blinkDuration == blinkDuration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ppgVal, blinkCount, blinkDuration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BluetoothDataModelImplCopyWith<_$BluetoothDataModelImpl> get copyWith =>
      __$$BluetoothDataModelImplCopyWithImpl<_$BluetoothDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BluetoothDataModelImplToJson(
      this,
    );
  }
}

abstract class _BluetoothDataModel implements BluetoothDataModel {
  const factory _BluetoothDataModel(
          {@JsonKey(name: 'ppg_val') final String? ppgVal,
          @JsonKey(name: 'blink_count') final String? blinkCount,
          @JsonKey(name: 'blink_duration') final String? blinkDuration}) =
      _$BluetoothDataModelImpl;

  factory _BluetoothDataModel.fromJson(Map<String, dynamic> json) =
      _$BluetoothDataModelImpl.fromJson;

  @override
  @JsonKey(name: 'ppg_val')
  String? get ppgVal;
  @override
  @JsonKey(name: 'blink_count')
  String? get blinkCount;
  @override
  @JsonKey(name: 'blink_duration')
  String? get blinkDuration;
  @override
  @JsonKey(ignore: true)
  _$$BluetoothDataModelImplCopyWith<_$BluetoothDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
