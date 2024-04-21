import 'package:helm_iot/datasources/iot_api_client.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';

class HeartBeatRepository {
  final IotApiClient _iotApiClient;

  HeartBeatRepository(this._iotApiClient);

  Future<List<HeartBeatModel>> getHearBeats(json) async {
    return [HeartBeatModel.fromJson(json)];
  }
}
