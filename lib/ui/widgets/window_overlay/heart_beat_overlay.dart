import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/domain/model/heart_beat_model.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_controller.dart';
import 'package:helm_iot/ui/controller/heart_beat_controller/heart_beat_state.dart';

class HeartBeatOverlay extends ConsumerWidget {
  const HeartBeatOverlay({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final heartBeatsState = ref.watch(heartBeatControllerProvider);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: 500,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.red,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(5, 0),
                  ),
                ]),
            child: const Center(
                child: Icon(
              Icons.favorite,
              color: Colors.white,
            )),
          ),
          const SizedBox(
            width: 16,
          ),
          switch (heartBeatsState) {
            InitialHeartBeatState(heartBeats: final heartBeatsInitial) =>
              _buildText(heartBeatsInitial),
            LoadingHeartBeatState(heartBeats: final heartBeats) =>
              _buildText(heartBeats),
            LoadedHeartBeatState(heartBeats: final heartBeats) =>
              _buildText(heartBeats),
            ErrorHeartBeatState(message: final message) => Text(message)
          },
        ],
      ),
    );
  }

  Widget _buildText(List<HeartBeatModel> heartBeats) {
    return Text(
      "${heartBeats.last.bpmValue} BPM",
      style: const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
    );
  }
}
