import 'package:helm_iot/domain/model/oxygen_model.dart';

sealed class OxygenState {
  final List<OxygenModel> oxygens;

  OxygenState({required this.oxygens});
}

class InitialOxygenState extends OxygenState {
  InitialOxygenState({required List<OxygenModel> oxygensInitial})
      : super(oxygens: [...oxygensInitial]);
}

class LoadingOxygenState extends OxygenState {
  LoadingOxygenState({
    required List<OxygenModel> Oxygens,
  }) : super(oxygens: Oxygens);
}

class LoadedOxygenState extends OxygenState {
  LoadedOxygenState({required List<OxygenModel> Oxygens})
      : super(oxygens: Oxygens);
}

class ErrorOxygenState extends OxygenState {
  final String message;

  ErrorOxygenState({required this.message}) : super(oxygens: []);
}
