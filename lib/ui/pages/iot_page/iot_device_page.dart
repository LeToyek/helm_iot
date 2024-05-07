import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/widgets/blink_chart.dart';
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
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorScheme.primary,
        centerTitle: true,
        foregroundColor: Colors.white,
        title: const Text(
          'Perangkat IOT',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSubTitle('Status'),
              _buildStatusSwitchWidget(context, 'disconnected'),
              const SizedBox(height: 24),
              const BlinkChart(),
              const SizedBox(height: 24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [HeartBeatChart(), OxygenChart()],
              ),
              const SizedBox(height: 24),
              _buildSubTitle("Tampilkan di Layar"),
              Text(
                'Anda dapat melihat grafik-grafik tersebut sembari membuka aplikasi lain',
                style: TextStyle(
                  color: colorScheme.outline,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                decoration: BoxDecoration(
                    color: colorScheme.primary,
                    borderRadius: BorderRadius.circular(16)),
                child: InkWell(
                  onTap: () async {
                    final status =
                        await FlutterOverlayWindow.isPermissionGranted();
                    print("status: $status");
                    if (status) {
                      await FlutterOverlayWindow.showOverlay(
                        overlayTitle: "Test",
                        width: 500,
                        height: 200,
                        enableDrag: true,
                      );
                    } else {
                      await FlutterOverlayWindow.requestPermission();
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.mobile_screen_share_rounded,
                          color: Colors.white),
                      Text(
                        'Tampilkan di Layar',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 16),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSubTitle(title) {
    return Column(children: [
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
    ]);
  }

  Widget _buildStatusSwitchWidget(context, connectState) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(2),
      width: size.width - 32,
      decoration: BoxDecoration(
        color: colorScheme.outline.withOpacity(0.1),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: (size.width - 32) / 2 - 8,
            decoration: BoxDecoration(
              color: connectState == 'connected'
                  ? colorScheme.surfaceVariant
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'Terhubung',
                style: TextStyle(
                  color: connectState == 'connected'
                      ? colorScheme.background
                      : colorScheme.outline,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: (size.width - 32) / 2 - 8,
            decoration: BoxDecoration(
              color: connectState != 'connected'
                  ? colorScheme.primaryContainer
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Center(
              child: Text(
                'Terputus',
                style: TextStyle(
                  color: connectState != 'connected'
                      ? colorScheme.background
                      : colorScheme.outline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
