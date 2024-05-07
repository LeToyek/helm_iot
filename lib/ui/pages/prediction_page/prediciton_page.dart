import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text(
          'Kerja Efektif',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jadwal Kerja Efektif',
              style: textTheme.titleMedium!
                  .apply(color: colorScheme.onBackground, fontWeightDelta: 2),
            ),
            Text(
              'Prediksi Jadwal Kerja Efektif Berdasarkan Data Detak Jantung dan Kedipan Mata menggunakan AI',
              style: textTheme.bodyMedium!.apply(
                color: colorScheme.onBackground.withOpacity(0.6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
