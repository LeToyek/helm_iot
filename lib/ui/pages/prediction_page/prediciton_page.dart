import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/controller/prediction_controller/prediction_controller.dart';
import 'package:helm_iot/ui/controller/prediction_controller/prediction_state.dart';
import 'package:lottie/lottie.dart';

class PredictionPage extends ConsumerStatefulWidget {
  const PredictionPage({super.key});

  static const routePath = '/prediction';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PredictionPageState();
}

class _PredictionPageState extends ConsumerState<PredictionPage> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final predictionController = ref.watch(predictionControllerProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text(
          'Kerja Efektif',
        ),
      ),
      body: switch (predictionController) {
        InitialPredictionState() => Center(
            child: Lottie.asset('assets/loading_puzzle_gif.json', height: 100)),
        LoadingPredictionState() => Center(
            child: Lottie.asset('assets/loading_puzzle_gif.json', height: 100)),
        LoadedPredictionState(predictModel: final report) => Container(),
        ErrorPredictionState(message: final message) => Text('Error: $message'),
      },
      // body: Padding(
      //   padding: const EdgeInsets.all(24.0),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Jadwal Kerja Efektif',
      //         style: textTheme.titleMedium!
      //             .apply(color: colorScheme.onBackground, fontWeightDelta: 2),
      //       ),
      //       Text(
      //         'Prediksi Jadwal Kerja Efektif Berdasarkan Data Detak Jantung dan Kedipan Mata menggunakan AI',
      //         style: textTheme.bodyMedium!.apply(
      //           color: colorScheme.onBackground.withOpacity(0.6),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
