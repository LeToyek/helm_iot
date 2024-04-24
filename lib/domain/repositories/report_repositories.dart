import 'package:helm_iot/datasources/iot_api_client.dart';
import 'package:helm_iot/domain/model/report_model.dart';

abstract class ReportRepositoryImpl {
  Future<ReportModel> getReportHours();
  Future<ReportModel> getReportDays();
  Future<ReportModel> getReportMonths();
}

class ReportRepository implements ReportRepositoryImpl {
  final IotApiClient _iotApiClient;

  ReportRepository(this._iotApiClient);

  @override
  Future<ReportModel> getReportHours() async {
    return ReportModel(
      avgBPMValue: 80,
      avgOxygenValue: 90,
      avgBlinkValue: 10,
      createdAt: DateTime.now().toString(),
    );
  }

  @override
  Future<ReportModel> getReportDays() async {
    return ReportModel(
      avgBPMValue: 80,
      avgOxygenValue: 90,
      avgBlinkValue: 10,
      status: 'healthy',
      createdAt: DateTime.now().toString(),
    );
  }

  @override
  Future<ReportModel> getReportMonths() {
    // TODO: implement getReportMonths
    throw UnimplementedError();
  }
}
