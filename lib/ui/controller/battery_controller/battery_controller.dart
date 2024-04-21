import 'package:helm_iot/application/battery_service.dart';
import 'package:helm_iot/application/services.dart';
import 'package:helm_iot/domain/model/battery_model.dart';
import 'package:helm_iot/ui/controller/battery_controller/battery_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'battery_controller.g.dart';

@riverpod
class BatteryController extends _$BatteryController {
  BatteryService get _service => ref.read(batteryServiceProvider);
  @override
  BatteryState build() {
    fetchBattery();
    return InitialBatteryState(
        batteryInitial: const BatteryModel(
      batteryValue: 0,
      createdAt: '00',
    ));
  }

  void fetchBattery() async {
    state = LoadingBatteryState();
    final data = await _service.getDummyBattery();
    state = LoadedBatteryState(battery: data);
  }
}
