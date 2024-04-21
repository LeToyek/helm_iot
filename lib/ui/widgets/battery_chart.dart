import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/battery_model.dart';
import 'package:helm_iot/ui/controller/battery_controller/battery_controller.dart';
import 'package:helm_iot/ui/controller/battery_controller/battery_state.dart';

class BatteryChart extends ConsumerStatefulWidget {
  const BatteryChart({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BatteryChartState();
}

class _BatteryChartState extends ConsumerState<BatteryChart> {
  @override
  Widget build(BuildContext context) {
    final batteryState = ref.watch(batteryControllerProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      duration: const Duration(seconds: 1),
      child: Column(
        children: [
          switch (batteryState) {
            InitialBatteryState(battery: final batteryInitial) =>
              _buildChart(context, batteryData: batteryInitial!),
            LoadingBatteryState() => const CircularProgressIndicator(),
            LoadedBatteryState(battery: final batteryData) =>
              _buildChart(context, batteryData: batteryData!),
            ErrorBatteryState(message: final message) => Text(message)
          },
          Text(
            "Baterai",
            style: textTheme.bodyMedium!
                .apply(fontWeightDelta: 2, color: colorScheme.outline),
          )
        ],
      ),
    );
  }

  Widget _buildChart(context, {required BatteryModel batteryData}) {
    final color = batteryData.batteryValue! > 50
        ? Theme.of(context).colorScheme.surfaceVariant
        : batteryData.batteryValue! > 20
            ? Colors.orange
            : Colors.red;
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: size.height / 8,
      child: Stack(children: [
        Center(
          child: SizedBox(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              strokeWidth: 12,
              color: color,
              backgroundColor: Colors.grey.shade200,
              value: 80 / 100,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Center(
            child: Text(
              "${batteryData.batteryValue!}%",
              style: textTheme.bodyLarge!.apply(fontWeightDelta: 4),
            ),
          ),
        )
      ]),
    );
  }
}
