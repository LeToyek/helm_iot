import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';

class BluetoothRepository {
  final FlutterBluetoothSerial _flutterBluetoothSerial;

  BluetoothRepository(this._flutterBluetoothSerial);

  Future<void> enableBluetooth() async {
    await _flutterBluetoothSerial.requestEnable();
  }
}
