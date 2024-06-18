import 'package:helm_iot/domain/model/predict_model.dart';

sealed class PredictionState {
  PredictModel? predictModel;

  PredictionState({this.predictModel});
}

class InitialPredictionState extends PredictionState {
  InitialPredictionState() : super();
}

class LoadingPredictionState extends PredictionState {
  LoadingPredictionState() : super();
}

class LoadedPredictionState extends PredictionState {
  LoadedPredictionState({required PredictModel predictModel})
      : super(predictModel: predictModel);
}

class ErrorPredictionState extends PredictionState {
  final String message;

  ErrorPredictionState({required this.message}) : super();
}
