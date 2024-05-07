import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helm_iot/domain/model/blink_model.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
class ReportModel with _$ReportModel {
  const factory ReportModel({
    int? avgBPMValue,
    int? avgOxygenValue,
    int? avgBlinkValue,
    List<HeartBeatModel>? heartBeatsMinutes,
    List<BlinkModel>? blinkModels,
    String? status,
    String? createdAt,
  }) = _ReportModel;

  factory ReportModel.fromJson(Map<String, dynamic> json) =>
      _$ReportModelFromJson(json);
}
