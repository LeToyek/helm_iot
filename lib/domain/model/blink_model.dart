import 'package:freezed_annotation/freezed_annotation.dart';

part 'blink_model.freezed.dart';
part 'blink_model.g.dart';

@freezed
class BlinkModel with _$BlinkModel {
  const factory BlinkModel({
    @JsonKey(name: 'blink_value') int? blinkValue,
    @JsonKey(name: 'blink_duration') double? blinkDuration,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _BlinkModel;

  factory BlinkModel.fromJson(Map<String, dynamic> json) =>
      _$BlinkModelFromJson(json);
}
