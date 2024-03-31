import 'dart:async';
import 'dart:math';

import 'package:helm_iot/domain/model/oxygen_model.dart';
import 'package:helm_iot/ui/controller/oxygen_controller/oxygen_state.dart';
import 'package:helm_iot/utils/convert_string.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'oxygen_controller.g.dart';

@riverpod
class OxygenController extends _$OxygenController {
  @override
  OxygenState build() {
    getDummyRealTimeOxygen();
    return InitialOxygenState(oxygensInitial: [
      const OxygenModel(bpmValue: 0, createdAt: '00'),
      const OxygenModel(bpmValue: 0, createdAt: '01'),
      const OxygenModel(bpmValue: 0, createdAt: '02'),
      const OxygenModel(bpmValue: 0, createdAt: '03'),
      const OxygenModel(bpmValue: 0, createdAt: '04'),
      const OxygenModel(bpmValue: 0, createdAt: '05'),
      const OxygenModel(bpmValue: 0, createdAt: '06'),
      const OxygenModel(bpmValue: 0, createdAt: '07'),
      const OxygenModel(bpmValue: 0, createdAt: '08'),
      const OxygenModel(bpmValue: 0, createdAt: '09'),
      const OxygenModel(bpmValue: 0, createdAt: '10'),
    ]);
  }

  void getDummyRealTimeOxygen() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      final oxygens = state.oxygens;
      // state = Loadingoxygenstate(oxygens: [...oxygens]);
      oxygens.removeAt(0);
      oxygens.add(OxygenModel(
          bpmValue: generateRandomNumber(),
          createdAt: extractSecond(DateTime.now().toString())));
      state = LoadedOxygenState(Oxygens: [...oxygens]);
    });
  }

  int generateRandomNumber() {
    return Random().nextInt(110) + 80;
  }
}
