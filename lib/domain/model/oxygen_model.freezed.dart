// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oxygen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OxygenModel _$OxygenModelFromJson(Map<String, dynamic> json) {
  return _OxygenModel.fromJson(json);
}

/// @nodoc
mixin _$OxygenModel {
  @JsonKey(name: 'oxygen_value')
  int? get oxygenValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OxygenModelCopyWith<OxygenModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OxygenModelCopyWith<$Res> {
  factory $OxygenModelCopyWith(
          OxygenModel value, $Res Function(OxygenModel) then) =
      _$OxygenModelCopyWithImpl<$Res, OxygenModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'oxygen_value') int? oxygenValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$OxygenModelCopyWithImpl<$Res, $Val extends OxygenModel>
    implements $OxygenModelCopyWith<$Res> {
  _$OxygenModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oxygenValue = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      oxygenValue: freezed == oxygenValue
          ? _value.oxygenValue
          : oxygenValue // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OxygenModelImplCopyWith<$Res>
    implements $OxygenModelCopyWith<$Res> {
  factory _$$OxygenModelImplCopyWith(
          _$OxygenModelImpl value, $Res Function(_$OxygenModelImpl) then) =
      __$$OxygenModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'oxygen_value') int? oxygenValue,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$OxygenModelImplCopyWithImpl<$Res>
    extends _$OxygenModelCopyWithImpl<$Res, _$OxygenModelImpl>
    implements _$$OxygenModelImplCopyWith<$Res> {
  __$$OxygenModelImplCopyWithImpl(
      _$OxygenModelImpl _value, $Res Function(_$OxygenModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oxygenValue = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$OxygenModelImpl(
      oxygenValue: freezed == oxygenValue
          ? _value.oxygenValue
          : oxygenValue // ignore: cast_nullable_to_non_nullable
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
class _$OxygenModelImpl implements _OxygenModel {
  const _$OxygenModelImpl(
      {@JsonKey(name: 'oxygen_value') this.oxygenValue,
      @JsonKey(name: 'created_at') this.createdAt});

  factory _$OxygenModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OxygenModelImplFromJson(json);

  @override
  @JsonKey(name: 'oxygen_value')
  final int? oxygenValue;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'OxygenModel(oxygenValue: $oxygenValue, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OxygenModelImpl &&
            (identical(other.oxygenValue, oxygenValue) ||
                other.oxygenValue == oxygenValue) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oxygenValue, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OxygenModelImplCopyWith<_$OxygenModelImpl> get copyWith =>
      __$$OxygenModelImplCopyWithImpl<_$OxygenModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OxygenModelImplToJson(
      this,
    );
  }
}

abstract class _OxygenModel implements OxygenModel {
  const factory _OxygenModel(
          {@JsonKey(name: 'oxygen_value') final int? oxygenValue,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$OxygenModelImpl;

  factory _OxygenModel.fromJson(Map<String, dynamic> json) =
      _$OxygenModelImpl.fromJson;

  @override
  @JsonKey(name: 'oxygen_value')
  int? get oxygenValue;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$OxygenModelImplCopyWith<_$OxygenModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
