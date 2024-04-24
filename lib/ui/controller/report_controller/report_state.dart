import 'package:helm_iot/domain/model/report_model.dart';

sealed class ReportState {
  ReportModel? report;

  ReportState({this.report});
}

class InitialReportState extends ReportState {
  InitialReportState() : super();
}

class LoadingReportState extends ReportState {
  LoadingReportState() : super();
}

class LoadedReportState extends ReportState {
  LoadedReportState({required ReportModel report}) : super(report: report);
}

class ErrorReportState extends ReportState {
  final String message;

  ErrorReportState({required this.message}) : super();
}
