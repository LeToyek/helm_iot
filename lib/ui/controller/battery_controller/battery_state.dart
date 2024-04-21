import 'package:helm_iot/domain/model/battery_model.dart';

sealed class BatteryState {
  final BatteryModel? battery;

  BatteryState({this.battery});
}

class InitialBatteryState extends BatteryState {
  InitialBatteryState({required BatteryModel batteryInitial})
      : super(battery: batteryInitial);
}

class LoadingBatteryState extends BatteryState {
  LoadingBatteryState() : super();
}

class LoadedBatteryState extends BatteryState {
  LoadedBatteryState({required BatteryModel battery}) : super(battery: battery);
}

class ErrorBatteryState extends BatteryState {
  final String message;

  ErrorBatteryState({required this.message}) : super(battery: null);
}
