// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteryModelImpl _$$BatteryModelImplFromJson(Map<String, dynamic> json) =>
    _$BatteryModelImpl(
      batteryValue: json['battery_value'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$BatteryModelImplToJson(_$BatteryModelImpl instance) =>
    <String, dynamic>{
      'battery_value': instance.batteryValue,
      'created_at': instance.createdAt,
    };
