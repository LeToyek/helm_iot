import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/blink_model.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';
import 'package:helm_iot/ui/controller/report_controller/report_controller.dart';
import 'package:helm_iot/ui/controller/report_controller/report_state.dart';
import 'package:helm_iot/ui/pages/prediction_page/prediciton_page.dart';
import 'package:ionicons/ionicons.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LaporanPage extends ConsumerWidget {
  const LaporanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final reportState = ref.watch(reportControllerProvider);
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: colorScheme.primary,
          centerTitle: true,
          foregroundColor: Colors.white,
          title: const Text(
            'Laporan',
          ),
        ),
        body: switch (reportState) {
          InitialReportState() => const Center(
              child: CircularProgressIndicator(),
            ),
          LoadingReportState() => const Center(
              child: CircularProgressIndicator(),
            ),
          LoadedReportState(report: final report) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        getStatus(status: report!.status ?? ''),
                        style: textTheme.displaySmall!.apply(
                          fontWeightDelta: 2,
                          color: getColor(context, status: report.status ?? ''),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      getImage(status: report.status ?? ''),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        getMessage(status: report.status ?? ''),
                        textAlign: TextAlign.center,
                        style: textTheme.bodyMedium!.apply(
                          color: colorScheme.onBackground,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Detak Jantung Per Menit',
                            style: textTheme.titleMedium!.apply(
                                color: colorScheme.onBackground,
                                fontWeightDelta: 2),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height / 4,
                            child: SfCartesianChart(
                                legend: const Legend(
                                  isVisible: true,
                                ),
                                tooltipBehavior: TooltipBehavior(
                                    enable: true,
                                    header: "Detak Jantung",
                                    format: 'point.y BPM'),
                                primaryXAxis: const CategoryAxis(
                                  isVisible: true,
                                  labelStyle: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                primaryYAxis: const NumericAxis(
                                  isVisible: true,
                                  labelStyle: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                series: <CartesianSeries<HeartBeatModel,
                                    String>>[
                                  ColumnSeries<HeartBeatModel, String>(
                                    color: colorScheme.surfaceVariant,
                                    name: 'Detak Jantung',
                                    animationDuration: 500,
                                    enableTooltip: true,
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    dataSource: report.heartBeatsMinutes ?? [],
                                    xValueMapper: (HeartBeatModel data, _) =>
                                        convertDateTimeToMinute(
                                            data.createdAt!),
                                    yValueMapper: (HeartBeatModel data, _) =>
                                        data.bpmValue,
                                  ),
                                  // add average bpm

                                  LineSeries<HeartBeatModel, String>(
                                    color: colorScheme.primary,
                                    enableTooltip: true,
                                    name: 'Rata-rata',
                                    dataSource: report.heartBeatsMinutes ?? [],
                                    xValueMapper: (HeartBeatModel data, _) =>
                                        convertDateTimeToMinute(
                                            data.createdAt!),
                                    yValueMapper: (HeartBeatModel data, _) =>
                                        report.avgBPMValue ?? 0,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kedipan Mata Per Menit',
                            style: textTheme.titleMedium!.apply(
                                color: colorScheme.onBackground,
                                fontWeightDelta: 2),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          SizedBox(
                            // width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.height / 4,
                            child: SfCartesianChart(
                                legend: const Legend(
                                  isVisible: true,
                                ),
                                tooltipBehavior: TooltipBehavior(
                                    enable: true,
                                    header: "Kedipan Mata",
                                    format: 'point.y KPM'),
                                primaryXAxis: const CategoryAxis(
                                  isVisible: true,
                                  labelStyle: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                primaryYAxis: const NumericAxis(
                                  isVisible: true,
                                  labelStyle: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                ),
                                series: <CartesianSeries<BlinkModel, String>>[
                                  ColumnSeries<BlinkModel, String>(
                                    color: colorScheme.surfaceVariant,
                                    name: 'Kedipan Mata',
                                    animationDuration: 500,
                                    enableTooltip: true,
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    dataSource: report.blinkModels ?? [],
                                    xValueMapper: (BlinkModel data, _) =>
                                        convertDateTimeToMinute(data.createdAt),
                                    yValueMapper: (BlinkModel data, _) =>
                                        data.blinkValue,
                                  ),
                                  // add average bpm

                                  LineSeries<BlinkModel, String>(
                                    color: colorScheme.primary,
                                    enableTooltip: true,
                                    name: 'Rata-rata',
                                    dataSource: report.blinkModels ?? [],
                                    xValueMapper: (BlinkModel data, _) =>
                                        convertDateTimeToMinute(data.createdAt),
                                    yValueMapper: (BlinkModel data, _) =>
                                        report.avgBlinkValue ?? 0,
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Jadwal Kerja Efektif',
                            style: textTheme.titleMedium!.apply(
                                color: colorScheme.onBackground,
                                fontWeightDelta: 2),
                          ),
                          Text(
                            'Prediksi Jadwal Kerja Efektif Berdasarkan Data Detak Jantung dan Kedipan Mata menggunakan AI',
                            style: textTheme.bodyMedium!.apply(
                              color: colorScheme.onBackground.withOpacity(0.6),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, PredictionPage.routePath);
                            },
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: BorderSide(
                                      width: 1, color: colorScheme.primary)),
                              leading: Icon(
                                Ionicons.sparkles,
                                color: colorScheme.primary,
                              ),
                              title: Text(
                                "Prediksi Jadwal Efektif (AI)",
                                style: textTheme.labelLarge!
                                    .apply(fontWeightDelta: 2),
                              ),
                            )
                                .animate(
                                  onPlay: (c) => c.repeat(reverse: true),
                                )
                                .custom(
                                  duration: 1.seconds,
                                  builder: (context, value, child) {
                                    return DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: colorScheme.surface,
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          boxShadow: [
                                            // breathing shadow
                                            BoxShadow(
                                              color: colorScheme.primary
                                                  .withOpacity(0.3),
                                              // map value from 0 to 1 to 0 to 8
                                              blurRadius: 10 * value,
                                              offset: const Offset(0, 0),
                                            ),
                                          ]),
                                      child: child,
                                    );
                                  },
                                ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ErrorReportState(message: final message) => Center(
              child: Text(message),
            ),
        });
  }

  String convertDateTimeToMinute(String dateTime) {
    final date = DateTime.parse(dateTime);
    return '${date.hour}:${date.minute}';
  }

  String getMessage({required String status}) {
    return status == 'healthy'
        ? 'Selamat! Data menunjukkan bahwa tubuh anda dalam keadaan sehat. Silahkan lihat grafik di bawah ini!'
        : 'Anda dalam kondisi tidak sehat, segera periksakan diri ke dokter!';
  }

  String getStatus({required String status}) {
    return status == 'healthy' ? 'Sehat' : 'Tidak Sehat';
  }

  Color getColor(context, {required String status}) {
    {
      final colorScheme = Theme.of(context).colorScheme;
      return status == 'healthy'
          ? colorScheme.surfaceVariant
          : colorScheme.error;
    }
  }

  Image getImage({required String status}) {
    return status == 'healthy'
        ? Image.asset(
            'assets/man_i.png',
          )
        : Image.asset('assets/pin_double_i.png');
  }
}
