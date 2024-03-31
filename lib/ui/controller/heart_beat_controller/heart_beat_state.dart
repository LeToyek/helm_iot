import 'package:helm_iot/domain/model/heart_beat_model.dart';

sealed class HeartBeatState {
  final List<HeartBeatModel> heartBeats;

  HeartBeatState({required this.heartBeats});
}

class InitialHeartBeatState extends HeartBeatState {
  InitialHeartBeatState({required List<HeartBeatModel> heartBeatsInitial})
      : super(heartBeats: [...heartBeatsInitial]);
}

class LoadingHeartBeatState extends HeartBeatState {
  LoadingHeartBeatState({
    required List<HeartBeatModel> heartBeats,
  }) : super(heartBeats: heartBeats);
}

class LoadedHeartBeatState extends HeartBeatState {
  LoadedHeartBeatState({required List<HeartBeatModel> heartBeats})
      : super(heartBeats: heartBeats);
}

class ErrorHeartBeatState extends HeartBeatState {
  final String message;

  ErrorHeartBeatState({required this.message}) : super(heartBeats: []);
}
