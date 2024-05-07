// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bluetooth_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BluetoothDataModelImpl _$$BluetoothDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BluetoothDataModelImpl(
      ppgVal: json['ppg_val'] as String?,
      blinkCount: json['blink_count'] as String?,
      blinkDuration: json['blink_duration'] as String?,
    );

Map<String, dynamic> _$$BluetoothDataModelImplToJson(
        _$BluetoothDataModelImpl instance) =>
    <String, dynamic>{
      'ppg_val': instance.ppgVal,
      'blink_count': instance.blinkCount,
      'blink_duration': instance.blinkDuration,
    };
