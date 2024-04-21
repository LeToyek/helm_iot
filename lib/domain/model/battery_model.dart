import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_model.freezed.dart';
part 'battery_model.g.dart';

@freezed
class BatteryModel with _$BatteryModel {
  const factory BatteryModel({
    @JsonKey(name: 'battery_value') int? batteryValue,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _BatteryModel;

  factory BatteryModel.fromJson(Map<String, dynamic> json) =>
      _$BatteryModelFromJson(json);
}
