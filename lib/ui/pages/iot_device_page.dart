import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/widgets/heart_beat_chart.dart';
import 'package:helm_iot/ui/widgets/oxygen_chart.dart';

class IOTDevice extends ConsumerStatefulWidget {
  static const routePath = '/iot_device';
  const IOTDevice({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IOTDeviceState();
}

class _IOTDeviceState extends ConsumerState<IOTDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IOT Device Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [HeartBeatChart(), OxygenChart()],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Go back!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
