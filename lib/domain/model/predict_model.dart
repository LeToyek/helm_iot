import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helm_iot/domain/model/blink_model.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';

part 'predict_model.freezed.dart';
part 'predict_model.g.dart';

@freezed
class PredictModel with _$PredictModel {
  const factory PredictModel({
    int? avgBPMValue,
    int? bpmSleepyThreshold,
    int? avgBlinkValue,
    int? blinkSleepyThreshold,
    List<HeartBeatModel>? heartBeatsMinutes,
    List<BlinkModel>? blinkModels,
    String? status,
    String? createdAt,
  }) = _PredictModel;

  factory PredictModel.fromJson(Map<String, dynamic> json) =>
      _$PredictModelFromJson(json);
}
