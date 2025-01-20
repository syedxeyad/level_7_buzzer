// with dropdown
// import 'package:flutter/material.dart';
//
// class BeepSoundDropdown extends StatelessWidget {
//   final String selectedBeepSound;
//   final ValueChanged<String?> onSoundChanged;
//
//   BeepSoundDropdown({
//     required this.selectedBeepSound,
//     required this.onSoundChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedBeepSound,
//       items: ['beep.mp3', 'notification_1.mp3'].map((sound) {
//         return DropdownMenuItem<String>(
//           value: sound,
//           child: Text(sound),
//         );
//       }).toList(),
//       onChanged: onSoundChanged,
//     );
//   }
// }

//without dropdown

// import 'package:flutter/material.dart';
//
// class BeepSoundDropdown extends StatelessWidget {
//   final String selectedBeepSound;
//   final ValueChanged<String?> onSoundChanged;
//
//   BeepSoundDropdown({
//     required this.selectedBeepSound,
//     required this.onSoundChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: selectedBeepSound,
//       items: ['notification_1.mp3'].map((sound) { // Keep only 'notification_1.mp3'
//         return DropdownMenuItem<String>(
//           value: sound,
//           child: Text(sound),
//         );
//       }).toList(),
//       onChanged: null, // Disable the dropdown
//     );
//   }
// }

//default sound

// import 'package:flutter/material.dart';
//
// class BeepSoundDropdown extends StatelessWidget {
//   // Beep sound ko directly handle kiya jaega, display nahi hoga
//   BeepSoundDropdown();
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox.shrink();  // Empty widget, kuch nahi dikhayega
//   }
// }
import 'package:flutter/material.dart';

class BeepSoundDropdown extends StatelessWidget {
  // Beep sound ko directly handle kiya jaega, display nahi hoga
  BeepSoundDropdown();

  @override
  Widget build(BuildContext context) {
    return SizedBox.shrink(); // Empty widget, kuch nahi dikhayega
  }
}
