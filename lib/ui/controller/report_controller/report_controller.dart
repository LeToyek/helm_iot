import 'package:helm_iot/application/report_service.dart';
import 'package:helm_iot/application/services.dart';
import 'package:helm_iot/ui/controller/report_controller/report_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'report_controller.g.dart';

@riverpod
class ReportController extends _$ReportController {
  ReportService get _service => ref.read(reportServiceProvider);
  @override
  ReportState build() {
    fetchReport();
    return InitialReportState();
  }

  void fetchReport() async {
    state = LoadingReportState();
    final data = await _service.getReportDays();
    print("object $data");
    state = LoadedReportState(report: data);
  }
}
