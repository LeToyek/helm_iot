// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'battery_response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BatteryResponseEntityImpl _$$BatteryResponseEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BatteryResponseEntityImpl(
      batteryValue: json['battery_value'] as int?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$BatteryResponseEntityImplToJson(
        _$BatteryResponseEntityImpl instance) =>
    <String, dynamic>{
      'battery_value': instance.batteryValue,
      'created_at': instance.createdAt,
    };
