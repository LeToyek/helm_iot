import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:helm_iot/datasources/iot_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'datasources.g.dart';

@riverpod
IotApiClient iotApiClient(IotApiClientRef ref) => IotApiClient();

@riverpod
FirebaseAuth firebaseAuth(FirebaseAuthRef ref) => FirebaseAuth.instance;

@riverpod
FirebaseFirestore firebaseFirestore(FirebaseFirestoreRef ref) =>
    FirebaseFirestore.instance;

@riverpod
FlutterBluetoothSerial flutterBluetoothSerial(FlutterBluetoothSerialRef ref) =>
    FlutterBluetoothSerial.instance;
