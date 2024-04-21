import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/blink_model.dart';
import 'package:helm_iot/ui/controller/blink_controller/blink_controller.dart';
import 'package:helm_iot/ui/controller/blink_controller/blink_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable

class BlinkChart extends ConsumerWidget {
  const BlinkChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blinksState = ref.watch(blinkControllerProvider);
    final size = MediaQuery.of(context).size;

    return switch (blinksState) {
      InitialBlinkState(blinks: final blinksInitial) =>
        _buildChart(context, blinksInitial, 'Kedipan Per Menit', size),
      LoadingBlinkState(blinks: final blinks) =>
        // _buildChart(heartBeats),
        const CircularProgressIndicator(),
      LoadedBlinkState(blinks: final blinks) =>
        _buildChart(context, blinks, 'Kedipan Per Menit', size),
      ErrorBlinkState(message: final message) => Text(message)
    };
  }

  Widget _buildChart(
      context, List<BlinkModel> blinks, String title, Size size) {
    final width = size.width - 24;
    final height = size.height / 5;
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          // padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: colorScheme.surfaceVariant),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: SizedBox(
                  width: width,
                  height: height,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(
                      axisLine: AxisLine(width: 1),
                      labelStyle: TextStyle(fontSize: 0),
                    ),
                    primaryYAxis: const NumericAxis(
                      labelStyle: TextStyle(fontSize: 0),
                      minimum: 0,
                      maximum: 1,
                    ),

                    // enableAxisAnimation: false,
                    series: <LineSeries<BlinkModel, String>>[
                      LineSeries<BlinkModel, String>(
                        color: Colors.white,
                        width: 2,
                        dataSource: blinks,
                        xValueMapper: (BlinkModel heartBeat, _) =>
                            heartBeat.createdAt,
                        yValueMapper: (BlinkModel heartBeat, _) =>
                            heartBeat.blinkValue,
                        animationDuration: 0,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${blinks.last.blinkValue.toString()} KPM",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
