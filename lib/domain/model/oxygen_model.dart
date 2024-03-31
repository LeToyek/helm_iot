import 'package:freezed_annotation/freezed_annotation.dart';

part 'oxygen_model.freezed.dart';
part 'oxygen_model.g.dart';

@freezed
class OxygenModel with _$OxygenModel {
  const factory OxygenModel({
    @JsonKey(name: 'oxygen_value') int? bpmValue,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _OxygenModel;

  factory OxygenModel.fromJson(Map<String, dynamic> json) =>
      _$OxygenModelFromJson(json);
}
