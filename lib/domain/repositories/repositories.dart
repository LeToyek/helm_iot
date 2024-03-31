import 'package:helm_iot/domain/model/heart_beat_model.dart';

class HeartBeatRepository {
  Future<List<HeartBeatModel>> getHearBeats(json) async {
    return [HeartBeatModel.fromJson(json)];
  }
}
