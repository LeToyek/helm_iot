import 'package:freezed_annotation/freezed_annotation.dart';

part 'battery_response_entity.freezed.dart';
part 'battery_response_entity.g.dart';

@freezed
class BatteryResponseEntity with _$BatteryResponseEntity {
  const factory BatteryResponseEntity({
    @JsonKey(name: 'battery_value') int? batteryValue,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _BatteryResponseEntity;

  factory BatteryResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$BatteryResponseEntityFromJson(json);
}
