import 'package:helm_iot/datasources/datasources.dart';
import 'package:helm_iot/domain/repositories/battery_repositories.dart';
import 'package:helm_iot/domain/repositories/bluetooth_repositories.dart';
import 'package:helm_iot/domain/repositories/heart_beat_repositories.dart';
import 'package:helm_iot/domain/repositories/prediction_repositories.dart';
import 'package:helm_iot/domain/repositories/report_repositories.dart';
import 'package:helm_iot/domain/repositories/user_repositories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repositories.g.dart';

@riverpod
BatteryRepository batteryRepository(BatteryRepositoryRef ref) =>
    BatteryRepository(ref.watch(iotApiClientProvider));

@riverpod
HeartBeatRepository heartBeatRepository(HeartBeatRepositoryRef ref) =>
    HeartBeatRepository(ref.watch(iotApiClientProvider));

@riverpod
ReportRepository reportRepository(ReportRepositoryRef ref) =>
    ReportRepository(ref.watch(iotApiClientProvider));

@riverpod
UserRepository userRepository(UserRepositoryRef ref) =>
    UserRepository(ref.watch(firebaseAuthProvider));

@riverpod
BluetoothRepository bluetoothRepository(BluetoothRepositoryRef ref) =>
    BluetoothRepository(ref.watch(flutterBluetoothSerialProvider));

@riverpod
PredicitonRepository predictionRepository(PredictionRepositoryRef ref) =>
    PredicitonRepository(ref.watch(firebaseFirestoreProvider));
