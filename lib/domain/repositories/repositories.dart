import 'package:helm_iot/datasources/datasources.dart';
import 'package:helm_iot/domain/repositories/battery_repositories.dart';
import 'package:helm_iot/domain/repositories/heart_beat_repositories.dart';
import 'package:helm_iot/domain/repositories/report_repositories.dart';
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
