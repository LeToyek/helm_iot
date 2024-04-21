import 'dart:async';
import 'dart:math';

import 'package:helm_iot/domain/model/blink_model.dart';
import 'package:helm_iot/ui/controller/blink_controller/blink_state.dart';
import 'package:helm_iot/utils/convert_string.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'blink_controller.g.dart';

@riverpod
class BlinkController extends _$BlinkController {
  @override
  BlinkState build() {
    getDummyRealTimeHeartBeat();
    return InitialBlinkState(blinksInitial: [
      const BlinkModel(blinkValue: 0, createdAt: '00'),
      const BlinkModel(blinkValue: 0, createdAt: '01'),
      const BlinkModel(blinkValue: 0, createdAt: '02'),
      const BlinkModel(blinkValue: 0, createdAt: '03'),
      const BlinkModel(blinkValue: 0, createdAt: '04'),
      const BlinkModel(blinkValue: 0, createdAt: '05'),
      const BlinkModel(blinkValue: 0, createdAt: '06'),
      const BlinkModel(blinkValue: 0, createdAt: '07'),
      const BlinkModel(blinkValue: 0, createdAt: '08'),
      const BlinkModel(blinkValue: 0, createdAt: '09'),
      const BlinkModel(blinkValue: 0, createdAt: '10'),
    ]);
  }

  void getDummyRealTimeHeartBeat() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      final blinks = state.blinks;
      // state = LoadingHeartBeatState(heartBeats: [...heartBeats]);
      blinks.removeAt(0);
      blinks.add(BlinkModel(
          blinkValue: generateRandomBinary(),
          createdAt: extractSecond(DateTime.now().toString())));
      state = LoadedBlinkState(blinks: [...blinks]);
    });
  }

  int generateRandomBinary() {
    return Random().nextInt(2);
  }
}
