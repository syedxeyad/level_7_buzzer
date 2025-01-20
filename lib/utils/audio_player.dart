// import 'package:audioplayers/audioplayers.dart';
//
// class AudioPlayerManager {
//   final AudioPlayer _audioPlayer = AudioPlayer();
//
//   Future<void> playBeepSound(String sound) async {
//     try {
//       await _audioPlayer.play(AssetSource(sound));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
//
//   void dispose() {
//     _audioPlayer.dispose();
//   }
// }
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerManager {
  final AudioPlayer _audioPlayer = AudioPlayer();

  Future<void> playBeepSound(String sound) async {
    try {
      await _audioPlayer.play(AssetSource(sound));
    } catch (e) {
      print('Error playing beep sound: $e');
    }
  }

  void dispose() {
    _audioPlayer.dispose();
  }
}
