import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:helm_iot/application/bluetooth_service.dart';
import 'package:helm_iot/application/services.dart';
import 'package:helm_iot/datasources/datasources.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bluetooth_controller.g.dart';

@riverpod
class BluetoothController extends _$BluetoothController {
  BluetoothService get _service => ref.read(bluetoothServiceProvider);

  FlutterBluetoothSerial get _bluetoothInstance =>
      ref.read(flutterBluetoothSerialProvider);

  BluetoothConnection? _connection;
  BluetoothState _bluetoothState = BluetoothState.UNKNOWN;
  late int _deviceState;

  bool isDisconnecting = false;

  bool? get isConnected => _connection != null && _connection!.isConnected;

  List<BluetoothDevice> _devicesList = [];
  BluetoothDevice? _device;
  bool _connected = false;
  bool _isButtonUnavailable = false;
  final bool _isLoadingVisible = false;

  // getter for those private variables

  List<BluetoothDevice> get devicesList => _devicesList;
  BluetoothDevice? get device => _device;
  bool get connected => _connected;
  bool get isButtonUnavailable => _isButtonUnavailable;
  bool get isLoadingVisible =>
      _isButtonUnavailable && _bluetoothState == BluetoothState.STATE_ON;
  BluetoothState get bluetoothState => _bluetoothState;

  @override
  BluetoothState build() {
    _bluetoothInstance.state.then((state) {
      _bluetoothState = state;

      _deviceState = 0;

      enableBluetooth();

      _bluetoothInstance.onStateChanged().listen((BluetoothState state) {
        _bluetoothState = state;
        if (_bluetoothState == BluetoothState.STATE_OFF) {
          _isButtonUnavailable = true;
        }
        getPairedDevices();
      });
    });
    return _bluetoothState;
  }

  Future<void> getPairedDevices() async {
    List<BluetoothDevice> devices = [];

    // To get the list of paired devices
    try {
      devices = await _bluetoothInstance.getBondedDevices();
    } on PlatformException catch (e) {
      debugPrint("Error ${e.message}");
    }

    // Store the [devices] list in the [_devicesList] for accessing
    // the list outside this class
    _devicesList = devices;
  }

  Future<void> enableBluetooth() async {
    // Retrieving the current Bluetooth state
    _bluetoothState = await FlutterBluetoothSerial.instance.state;

    // If the bluetooth is off, then turn it on first
    // and then retrieve the devices that are paired.
    if (_bluetoothState == BluetoothState.STATE_OFF) {
      await FlutterBluetoothSerial.instance.requestEnable();
      await getPairedDevices();
      // return true;
    } else {
      await getPairedDevices();
    }
    // return false;
  }

  Future<void> conenctBluetooth() async {
    _isButtonUnavailable = true;
    if (_device == null) {
      return;
    }

    if (!isConnected!) {
      // Trying to connect to the device
      await BluetoothConnection.toAddress(_device!.address).then((conn) {
        print('Connected to the device');
        _connection = conn;
        _connected = true;

        _connection?.input!.listen((Uint8List data) {
          print('Data incoming: ${ascii.decode(data)}');
        }).onDone(() {
          if (isDisconnecting) {
            print('Disconnecting locally!');
          } else {
            print('Disconnected remotely!');
          }
        });
      }).catchError((error) {
        print('Cannot connect, exception occurred');
        print(error);
      });
    }
  }

  Future switchBluetoothConnection() async {
    if (_connected) {
      _connection?.dispose();
      _connection = null;
      _connected = false;
      isDisconnecting = false;
    } else {
      await conenctBluetooth();
    }
  }
}
