// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heart_beat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HeartBeatModelImpl _$$HeartBeatModelImplFromJson(Map<String, dynamic> json) =>
    _$HeartBeatModelImpl(
      bpmValue: json['bpm_value'] as int?,
      createdAt: json['created_at'] as String?,
      isPrediction: json['is_prediction'] as String?,
    );

Map<String, dynamic> _$$HeartBeatModelImplToJson(
        _$HeartBeatModelImpl instance) =>
    <String, dynamic>{
      'bpm_value': instance.bpmValue,
      'created_at': instance.createdAt,
      'is_prediction': instance.isPrediction,
    };
