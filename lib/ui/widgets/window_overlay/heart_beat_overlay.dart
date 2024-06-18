import 'package:flutter/material.dart';
import 'package:flutter_overlay_window/flutter_overlay_window.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/controller/blink_controller/blink_controller.dart';
import 'package:helm_iot/ui/controller/blink_controller/blink_state.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_controller.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_state.dart';

enum OverlayModuleState {
  heartBeat,
  blink,
}

class HeartBeatOverlay extends ConsumerStatefulWidget {
  const HeartBeatOverlay({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _HeartBeatOverlayState();
}

class _HeartBeatOverlayState extends ConsumerState<HeartBeatOverlay> {
  OverlayModuleState _overlayModuleState = OverlayModuleState.heartBeat;

  Color getColor(context) {
    final colorScheme = Theme.of(context).colorScheme;
    if (_overlayModuleState == OverlayModuleState.heartBeat) {
      return colorScheme.primary;
    } else if (_overlayModuleState == OverlayModuleState.blink) {
      return colorScheme.surfaceVariant;
    }
    return colorScheme.surfaceVariant;
  }

  IconData getIcon() {
    if (_overlayModuleState == OverlayModuleState.heartBeat) {
      return Icons.favorite;
    } else if (_overlayModuleState == OverlayModuleState.blink) {
      return Icons.remove_red_eye;
    }
    return Icons.remove_red_eye;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GestureDetector(
        onTap: () => {
          setState(() {
            if (_overlayModuleState == OverlayModuleState.heartBeat) {
              _overlayModuleState = OverlayModuleState.blink;
            } else if (_overlayModuleState == OverlayModuleState.blink) {
              _overlayModuleState = OverlayModuleState.heartBeat;
            } else {
              _overlayModuleState = OverlayModuleState.heartBeat;
            }
          })
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          width: 160,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: getColor(context)),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onDoubleTap: () => {FlutterOverlayWindow.closeOverlay()},
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: getColor(context),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: const Offset(5, 0),
                        ),
                      ]),
                  child: Center(
                      child: Icon(
                    getIcon(),
                    color: Colors.white,
                  )),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              getData(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildText(List<dynamic> data) {
    if (_overlayModuleState == OverlayModuleState.blink) {
      return Text(
        "${data.last.blinkValue} KPM",
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
      );
    }

    return Text(
      "${data.last.bpmValue} BPM",
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget getData() {
    final heartBeatsState = ref.watch(heartBeatControllerProvider);
    final blinkState = ref.watch(blinkControllerProvider);
    return switch (_overlayModuleState) {
      OverlayModuleState.heartBeat => switch (heartBeatsState) {
          InitialHeartBeatState(heartBeats: final heartBeatsInitial) =>
            buildText(heartBeatsInitial),
          LoadingHeartBeatState(heartBeats: final heartBeats) =>
            buildText(heartBeats),
          LoadedHeartBeatState(heartBeats: final heartBeats) =>
            buildText(heartBeats),
          ErrorHeartBeatState(message: final message) => Text(message)
        },
      OverlayModuleState.blink => switch (blinkState) {
          InitialBlinkState(blinks: final blinksInitial) =>
            buildText(blinksInitial),
          LoadingBlinkState(blinks: final blinks) => buildText(blinks),
          LoadedBlinkState(blinks: final blinks) => buildText(blinks),
          ErrorBlinkState(message: final message) => Text(message)
        }
    };
  }
}
