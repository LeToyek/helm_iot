import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bluetooth_data_model.freezed.dart';
part 'bluetooth_data_model.g.dart';

@freezed
class BluetoothDataModel with _$BluetoothDataModel {
  const factory BluetoothDataModel({
    @JsonKey(name: 'ppg_val') String? ppgVal,
    @JsonKey(name: 'blink_count') String? blinkCount,
    @JsonKey(name: 'blink_duration') String? blinkDuration,
  }) = _BluetoothDataModel;

  factory BluetoothDataModel.fromJson(Map<String, dynamic> json) =>
      _$BluetoothDataModelFromJson(json);

  factory BluetoothDataModel.fromJsonString(Uint8List data) =>
      BluetoothDataModel.fromJson(jsonDecode(utf8.decode(data)));
}
