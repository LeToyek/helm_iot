import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/controller/report_controller/report_controller.dart';
import 'package:helm_iot/ui/controller/report_controller/report_state.dart';

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
                padding: const EdgeInsets.all(16.0),
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
