// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportModelImpl _$$ReportModelImplFromJson(Map<String, dynamic> json) =>
    _$ReportModelImpl(
      avgBPMValue: json['avgBPMValue'] as int?,
      avgOxygenValue: json['avgOxygenValue'] as int?,
      avgBlinkValue: json['avgBlinkValue'] as int?,
      heartBeatsMinutes: (json['heartBeatsMinutes'] as List<dynamic>?)
          ?.map((e) => HeartBeatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      blinkModels: (json['blinkModels'] as List<dynamic>?)
          ?.map((e) => BlinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$ReportModelImplToJson(_$ReportModelImpl instance) =>
    <String, dynamic>{
      'avgBPMValue': instance.avgBPMValue,
      'avgOxygenValue': instance.avgOxygenValue,
      'avgBlinkValue': instance.avgBlinkValue,
      'heartBeatsMinutes': instance.heartBeatsMinutes,
      'blinkModels': instance.blinkModels,
      'status': instance.status,
      'createdAt': instance.createdAt,
    };
