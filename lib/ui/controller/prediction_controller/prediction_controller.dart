import 'package:helm_iot/application/prediction_service.dart';
import 'package:helm_iot/application/services.dart';
import 'package:helm_iot/ui/controller/prediction_controller/prediction_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'prediction_controller.g.dart';

@riverpod
class PredictionController extends _$PredictionController {
  PredicitonService get _service => ref.read(predictionServiceProvider);
  @override
  PredictionState build() {
    fetchPrediction();
    return InitialPredictionState();
  }

  void fetchPrediction() async {
    state = LoadingPredictionState();
    final heartBeatData = await _service.heartBeatPredict();

    Future.delayed(const Duration(seconds: 5), () {
      // state = LoadedPredictionState(report: data);
      // state = LoadedPredictionState(predictModel: data);
    });
  }
}
