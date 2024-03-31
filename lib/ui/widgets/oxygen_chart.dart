import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/oxygen_model.dart';
import 'package:helm_iot/ui/controller/oxygen_controller/oxygen_controller.dart';
import 'package:helm_iot/ui/controller/oxygen_controller/oxygen_state.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: must_be_immutable

class OxygenChart extends ConsumerWidget {
  const OxygenChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final oxygenState = ref.watch(oxygenControllerProvider);
    final size = MediaQuery.of(context).size;

    return switch (oxygenState) {
      InitialOxygenState(oxygens: final oxygensInitial) =>
        _buildChart(oxygensInitial, 'Oxygen (mmHG)', size),
      LoadingOxygenState(oxygens: final _) =>
        // _buildChart(oxygens),
        const CircularProgressIndicator(),
      LoadedOxygenState(oxygens: final oxygens) =>
        _buildChart(oxygens, 'Oxygen (mmHG)', size),
      // _buildChart(oxygens, 'Heart Beat (BPM)', size),

      ErrorOxygenState(message: final message) => Text(message)
    };
  }

  Widget _buildChart(List<OxygenModel> oxygens, String title, Size size) {
    final width = size.width / 2 - 24;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
              color: Colors.blueAccent.shade700),
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
                    series: <LineSeries<OxygenModel, String>>[
                      LineSeries<OxygenModel, String>(
                        color: Colors.white,
                        width: 2,
                        dataSource: oxygens,
                        xValueMapper: (OxygenModel oxygens, _) =>
                            oxygens.createdAt,
                        yValueMapper: (OxygenModel oxygens, _) =>
                            oxygens.bpmValue,
                        animationDuration: 0,
                      )
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.cloud,
                    color: Colors.white,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    "${oxygens.last.bpmValue.toString()} mmHG",
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
