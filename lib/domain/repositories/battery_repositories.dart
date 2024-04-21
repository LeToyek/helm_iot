import 'package:helm_iot/datasources/iot_api_client.dart';
import 'package:helm_iot/domain/entities/battery_response_entity.dart';

abstract class BatteryRepositoryImpl {
  Future<dynamic> getBatteryLevel();
}

class BatteryRepository implements BatteryRepositoryImpl {
  final IotApiClient _iotApiClient;

  BatteryRepository(this._iotApiClient);

  @override
  Future<dynamic> getBatteryLevel() async {
    return await _iotApiClient.get('');
  }

  Future<BatteryResponseEntity> getDummyBatteryLevel() async {
    return await Future.delayed(const Duration(seconds: 2), () {
      return const BatteryResponseEntity(
        batteryValue: 100,
        createdAt: '12:00',
      );
    });
  }
}
