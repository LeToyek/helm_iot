// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blink_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlinkModelImpl _$$BlinkModelImplFromJson(Map<String, dynamic> json) =>
    _$BlinkModelImpl(
      blinkValue: json['blink_value'] as int?,
      blinkDuration: (json['blink_duration'] as num?)?.toDouble(),
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$BlinkModelImplToJson(_$BlinkModelImpl instance) =>
    <String, dynamic>{
      'blink_value': instance.blinkValue,
      'blink_duration': instance.blinkDuration,
      'created_at': instance.createdAt,
    };
