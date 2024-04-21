import 'package:helm_iot/domain/model/blink_model.dart';

sealed class BlinkState {
  final List<BlinkModel> blinks;

  BlinkState({required this.blinks});
}

class InitialBlinkState extends BlinkState {
  InitialBlinkState({required List<BlinkModel> blinksInitial})
      : super(blinks: [...blinksInitial]);
}

class LoadingBlinkState extends BlinkState {
  LoadingBlinkState({
    required List<BlinkModel> blinks,
  }) : super(blinks: blinks);
}

class LoadedBlinkState extends BlinkState {
  LoadedBlinkState({required List<BlinkModel> blinks}) : super(blinks: blinks);
}

class ErrorBlinkState extends BlinkState {
  final String message;

  ErrorBlinkState({required this.message}) : super(blinks: []);
}
