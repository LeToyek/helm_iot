import 'package:helm_iot/domain/model/heart_beat_model.dart';
import 'package:helm_iot/domain/repositories/prediction_repositories.dart';

class PredicitonService {
  final PredicitonRepository _predictionRepository;

  PredicitonService(this._predictionRepository);
  Future<List<HeartBeatModel>> heartBeatPredict() async {
    // Call the model to get the prediction
    return _predictionRepository.heartBeatPredict();
  }
}
