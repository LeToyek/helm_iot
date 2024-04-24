import 'package:helm_iot/application/battery_service.dart';
import 'package:helm_iot/application/report_service.dart';
import 'package:helm_iot/domain/repositories/repositories.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services.g.dart';

@riverpod
BatteryService batteryService(BatteryServiceRef ref) =>
    BatteryService(ref.watch(batteryRepositoryProvider));

@riverpod
ReportService reportService(ReportServiceRef ref) =>
    ReportService(ref.watch(reportRepositoryProvider));
