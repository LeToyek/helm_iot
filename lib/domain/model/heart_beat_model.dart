import 'package:freezed_annotation/freezed_annotation.dart';

part 'heart_beat_model.freezed.dart';
part 'heart_beat_model.g.dart';

@freezed
class HeartBeatModel with _$HeartBeatModel {
  const factory HeartBeatModel({
    @JsonKey(name: 'bpm_value') int? bpmValue,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'is_prediction') String? isPrediction,
  }) = _HeartBeatModel;

  factory HeartBeatModel.fromJson(Map<String, dynamic> json) =>
      _$HeartBeatModelFromJson(json);
}
