import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_controller.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable

class HeartBeatChart extends ConsumerWidget {
  const HeartBeatChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heartBeatsState = ref.watch(heartBeatControllerProvider);
    final size = MediaQuery.of(context).size;

    return switch (heartBeatsState) {
      InitialHeartBeatState(heartBeats: final heartBeatsInitial) =>
        _buildChart(heartBeatsInitial, 'Heart Beat (BPM)', size),
      LoadingHeartBeatState(heartBeats: final heartBeats) =>
        // _buildChart(heartBeats),
        const CircularProgressIndicator(),
      LoadedHeartBeatState(heartBeats: final heartBeats) =>
        _buildChart(heartBeats, 'Heart Beat (BPM)', size),
      ErrorHeartBeatState(message: final message) => Text(message)
    };
  }

  Widget _buildChart(List<HeartBeatModel> heartBeats, String title, Size size) {
    final width = size.width / 2 - 24;
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
              color: Colors.redAccent.shade700),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.5,
                child: SizedBox(
                  width: width,
                  height: width,
                  child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(
                      axisLine: AxisLine(width: 1),
                      labelStyle: TextStyle(fontSize: 0),
                    ),
                    primaryYAxis: const NumericAxis(
                      labelStyle: TextStyle(fontSize: 0),
                      minimum: 60,
                      maximum: 200,
                    ),

                    // enableAxisAnimation: false,
                    series: <LineSeries<HeartBeatModel, String>>[
                      LineSeries<HeartBeatModel, String>(
                        color: Colors.white,
                        width: 2,
                        dataSource: heartBeats,
                        xValueMapper: (HeartBeatModel heartBeat, _) =>
                            heartBeat.createdAt,
                        yValueMapper: (HeartBeatModel heartBeat, _) =>
                            heartBeat.bpmValue,
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
                    Icons.favorite,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${heartBeats.last.bpmValue.toString()} BPM",
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
