// // switch_widget.dart
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow; // Add a parameter to check if it's the last row
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false, // Default to false, can be true for the last row
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//
//
//         Switch(
//           value: switchState1,
//           onChanged: onSwitch1Changed,
//           activeColor: Colors.green,
//           inactiveThumbColor: Colors.red,
//         ),
//         SizedBox(width: 22),
//         Switch(
//           value: switchState2,
//           onChanged: onSwitch2Changed,
//           activeColor: Colors.green,
//           inactiveThumbColor: Colors.red,
//         ),
//       ],
//     ),
//     // If it's the last row, add the text "z" under the switches
//     if (isLastRow)
//       Column(
//         children: [
//           Text('z'), // Label under the first switch
//     Text('z'), // Label under the second switch
// ],
//       ),
//     ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow; // Parameter to check if it's the last row
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false, // Default to false, can be true for the last row
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: onSwitch1Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: onSwitch2Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//         // If it's the last row, add the text "z" under the switches
//         // if (isLastRow)
//         //   Column(
//         //     children: [
//         //       Text('z'), // Label under the first switch
//         //       Text('z'), // Label under the second switch
//         //     ],
//         //   ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow; // Parameter to check if it's the last row
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false, // Default to false, can be true for the last row
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: onSwitch1Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: onSwitch2Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//         // If it's the last row, add the text "z" under the switches
//         // if (isLastRow)
//         //   Column(
//         //     children: [
//         //       Text('z'), // Label under the first switch
//         //       Text('z'), // Label under the second switch
//         //     ],
//         //   ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow;
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: onSwitch1Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: onSwitch2Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow;
//   final Function(bool) onSoundPlay;  // Callback to play the sound when switch is toggled
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false,
//     required this.onSoundPlay, // Pass callback for sound
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: (value) {
//                 onSwitch1Changed(value);
//                 if (value) onSoundPlay(value);  // Play sound if the switch is turned ON
//               },
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: (value) {
//                 onSwitch2Changed(value);
//                 if (value) onSoundPlay(value);  // Play sound if the switch is turned ON
//               },
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow;
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: onSwitch1Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: onSwitch2Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//   final bool isLastRow;
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//     this.isLastRow = false,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Switch(
//               value: switchState1,
//               onChanged: onSwitch1Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//             SizedBox(width: 22),
//             Switch(
//               value: switchState2,
//               onChanged: onSwitch2Changed,
//               activeColor: Colors.green,
//               inactiveThumbColor: Colors.red,
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//   import 'package:flutter/material.dart';
//
//   class SwitchWidget extends StatelessWidget {
//     final bool switchState1;
//     final bool switchState2;
//     final ValueChanged<bool> onSwitch1Changed;
//     final ValueChanged<bool> onSwitch2Changed;
//
//     SwitchWidget({
//       required this.switchState1,
//       required this.switchState2,
//       required this.onSwitch1Changed,
//       required this.onSwitch2Changed,
//     });
//
//     @override
//     Widget build(BuildContext context) {
//       return Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Switch(
//                 value: switchState1,
//                 onChanged: onSwitch1Changed,
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//               ),
//               SizedBox(width: 22),
//               Switch(
//                 value: switchState2,
//                 onChanged: onSwitch2Changed,
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//               ),
//             ],
//           ),
//         ],
//       );
//     }
//   }

// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Switch(
//           value: switchState1,
//           onChanged: onSwitch1Changed,
//         ),
//         Switch(
//           value: switchState2,
//           onChanged: onSwitch2Changed,
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatelessWidget {
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//
//   SwitchWidget({
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Switch(
//           value: switchState1,
//           onChanged: onSwitch1Changed,
//         ),
//         Switch(
//           value: switchState2,
//           onChanged: onSwitch2Changed,
//         ),
//       ],
//     );
//   }
// }
//
// // import 'package:flutter/material.dart';
// //
// // class SwitchWidget extends StatelessWidget {
// //   final bool switchState1;
// //   final bool switchState2;
// //   final ValueChanged<bool> onSwitch1Changed;
// //   final ValueChanged<bool> onSwitch2Changed;
// //
// //   SwitchWidget({
// //     required this.switchState1,
// //     required this.switchState2,
// //     required this.onSwitch1Changed,
// //     required this.onSwitch2Changed,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         Switch(
// //           value: switchState1,
// //           onChanged: onSwitch1Changed,
// //         ),
// //         Switch(
// //           value: switchState2,
// //           onChanged: onSwitch2Changed,
// //         ),
// //       ],
// //     );
// //   }
// // }
import 'package:flutter/material.dart';

class SwitchWidget extends StatelessWidget {
  final bool switchState1;
  final bool switchState2;
  final ValueChanged<bool> onSwitch1Changed;
  final ValueChanged<bool> onSwitch2Changed;

  SwitchWidget({
    required this.switchState1,
    required this.switchState2,
    required this.onSwitch1Changed,
    required this.onSwitch2Changed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: switchState1,
              onChanged: onSwitch1Changed,
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
            ),
            SizedBox(width: 22),
            Switch(
              value: switchState2,
              onChanged: onSwitch2Changed,
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}

// complete switch functionality and ui 1/29/2025 10:43 am

// import 'package:flutter/material.dart';
//
// class SwitchWidget extends StatefulWidget {
//   final int currentLevel;
//   final int index;
//   final Function(String) playBeepSound;
//   final String selectedBeepSound;
//   final bool wasLevelIncreased;
//   final bool levelChangedDown;
//   final bool switchState1;
//   final bool switchState2;
//   final ValueChanged<bool> onSwitch1Changed;
//   final ValueChanged<bool> onSwitch2Changed;
//
//   SwitchWidget({
//     required this.currentLevel,
//     required this.index,
//     required this.playBeepSound,
//     required this.selectedBeepSound,
//     required this.wasLevelIncreased,
//     required this.levelChangedDown,
//     required this.switchState1,
//     required this.switchState2,
//     required this.onSwitch1Changed,
//     required this.onSwitch2Changed,
//   });
//
//   @override
//   _SwitchWidgetState createState() => _SwitchWidgetState();
// }
//
// class _SwitchWidgetState extends State<SwitchWidget> {
//   bool hasSoundPlayedBefore = false;
//   bool soundPlayed = false;
//
//   void checkAndPlaySound() {
//     if (widget.switchState1 && widget.currentLevel == (widget.index + 1) &&
//         !soundPlayed && !hasSoundPlayedBefore && !widget.levelChangedDown) {
//       widget.playBeepSound(widget.selectedBeepSound);
//       soundPlayed = true;
//       hasSoundPlayedBefore = true;
//     }
//
//     if (widget.wasLevelIncreased && widget.switchState1 && widget.currentLevel == (widget.index + 1) && !soundPlayed) {
//       widget.playBeepSound(widget.selectedBeepSound);
//       soundPlayed = true;
//       hasSoundPlayedBefore = true;
//     }
//
//     if (widget.switchState2 && widget.currentLevel != (widget.index + 1) &&
//         !soundPlayed && !hasSoundPlayedBefore && widget.levelChangedDown) {
//       widget.playBeepSound(widget.selectedBeepSound);
//       soundPlayed = true;
//       hasSoundPlayedBefore = true;
//     }
//
//     if (!widget.wasLevelIncreased && widget.switchState2 && widget.currentLevel != (widget.index + 1) && !soundPlayed) {
//       widget.playBeepSound(widget.selectedBeepSound);
//       soundPlayed = true;
//       hasSoundPlayedBefore = true;
//     }
//   }
//
//   @override
//   void didUpdateWidget(SwitchWidget oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     if (widget.currentLevel != (widget.index + 1)) {
//       soundPlayed = false;
//     }
//     checkAndPlaySound();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Switch(
//           value: widget.switchState1,
//           onChanged: (value) {
//             widget.onSwitch1Changed(value);
//             setState(() {
//               soundPlayed = false;
//               checkAndPlaySound();
//             });
//           },
//           activeColor: Colors.green,
//           inactiveThumbColor: Colors.red,
//         ),
//         SizedBox(width: 22),
//         Switch(
//           value: widget.switchState2,
//           onChanged: (value) {
//             widget.onSwitch2Changed(value);
//             setState(() {
//               soundPlayed = false;
//               checkAndPlaySound();
//             });
//           },
//           activeColor: Colors.green,
//           inactiveThumbColor: Colors.red,
//         ),
//       ],
//     );
//   }
// }
//

// // 1) switch_widget.dart >>>>
//
// import 'package:flutter/material.dart'; // Flutter ka material design package import kiya gaya hai.
//
// class SwitchWidget extends StatelessWidget { // 'SwitchWidget' naam ka ek stateless widget define kiya gaya hai.
//   final bool switchState1; // Pehla switch ka state (ON/OFF) store karne ke liye ek variable.
//   final bool switchState2; // Doosra switch ka state (ON/OFF) store karne ke liye ek variable.
//   final ValueChanged<bool> onSwitch1Changed; // Pehle switch ke state ke change hone par jo function call hoga.
//   final ValueChanged<bool> onSwitch2Changed; // Doosre switch ke state ke change hone par jo function call hoga.
//
//   SwitchWidget({
//     required this.switchState1, // Constructor mein pehla switch state pass kiya gaya hai.
//     required this.switchState2, // Constructor mein doosra switch state pass kiya gaya hai.
//     required this.onSwitch1Changed, // Pehle switch ke liye onSwitch1Changed function pass kiya gaya hai.
//     required this.onSwitch2Changed, // Doosre switch ke liye onSwitch2Changed function pass kiya gaya hai.
//   });
//
//   @override
//   Widget build(BuildContext context) { // 'build' method jo widget ki UI ko render karta hai.
//     return Column( // Column widget, jo child widgets ko vertical direction mein arrange karta hai.
//       children: [
//         Row( // Row widget, jo child widgets ko horizontal direction mein arrange karta hai.
//           mainAxisAlignment: MainAxisAlignment.center, // Child widgets ko center mein align karta hai.
//           children: [
//             Switch( // Pehla switch widget, jo user ke click pe state change karta hai.
//               value: switchState1, // Pehle switch ka current state (ON/OFF) value ko pass karta hai.
//               onChanged: onSwitch1Changed, // Jab switch ka state change hoga, toh onSwitch1Changed function call hoga.
//               activeColor: Colors.green, // Jab switch ON ho, toh uska color green hoga.
//               inactiveThumbColor: Colors.red, // Jab switch OFF ho, toh uska color red hoga.
//             ),
//             SizedBox(width: 22), // Switch ke beech mein 22 pixels ka gap dalta hai.
//             Switch( // Doosra switch widget.
//               value: switchState2, // Doosre switch ka current state (ON/OFF) value ko pass karta hai.
//               onChanged: onSwitch2Changed, // Jab doosra switch ka state change hoga, toh onSwitch2Changed function call hoga.
//               activeColor: Colors.green, // Jab switch ON ho, toh uska color green hoga.
//               inactiveThumbColor: Colors.red, // Jab switch OFF ho, toh uska color red hoga.
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
//
// // 2) abc >>>> Usage of SwitchWidget
//
// SwitchWidget( // SwitchWidget ko use kiya gaya hai.
// switchState1: switchStates1[reversedIndex], // Pehla switch state 'switchStates1' list se reversedIndex ke basis par liya gaya hai.
// switchState2: switchStates2[reversedIndex], // Doosra switch state 'switchStates2' list se reversedIndex ke basis par liya gaya hai.
// onSwitch1Changed: (value) { // Jab pehla switch ka state change ho, toh is function ko call kiya jata hai.
// setState(() { // 'setState' method ke zariye UI ko update karte hain.
// switchStates1[reversedIndex] = value; // Pehle switch ka state 'switchStates1' list mein updated kiya gaya hai.
//
// // "On Notify" logic for switch 1
// if (switchStates1[reversedIndex]) { // Agar switch 1 ON ho (true state)
// if (currentLevel == (reversedIndex + 1) && !soundPlayed[reversedIndex]) { // Agar current water level match kare aur sound nahi chalaya gaya ho
// _audioPlayerManager.playBeepSound(_selectedBeepSound!); // Sound play kiya jata hai.
// soundPlayed[reversedIndex] = true; // Sound ko play hone ka flag true kiya gaya.
// } else if (currentLevel != (reversedIndex + 1)) { // Agar level match nahi karta
// soundPlayed[reversedIndex] = false; // Sound flag ko reset kar diya gaya hai.
// }
// }
//
// // "Off Notify" logic for switch 1
// if (!switchStates1[reversedIndex] && hasSoundPlayedBefore[reversedIndex]) { // Agar switch 1 OFF ho aur pehle sound play ho chuka ho
// soundPlayed[reversedIndex] = false; // Sound flag ko reset kar diya gaya hai.
// }
// });
// },
//
// onSwitch2Changed: (value) { // Jab doosra switch ka state change ho, toh is function ko call kiya jata hai.
// setState(() { // 'setState' method ke zariye UI ko update karte hain.
// switchStates2[reversedIndex] = value; // Doosre switch ka state 'switchStates2' list mein updated kiya gaya hai.
//
// // "Off Notify" logic for switch 2
// if (switchStates2[reversedIndex]) { // Agar switch 2 ON ho
// if (currentLevel == (reversedIndex + 1) && !soundPlayed[reversedIndex]) { // Agar current water level match kare aur sound nahi chalaya gaya ho
// _audioPlayerManager.playBeepSound(_selectedBeepSound!); // Sound play kiya jata hai.
// soundPlayed[reversedIndex] = true; // Sound ko play hone ka flag true kiya gaya.
// } else if (currentLevel != (reversedIndex + 1)) { // Agar level match nahi karta
// soundPlayed[reversedIndex] = false; // Sound flag ko reset kar diya gaya hai.
// }
// }
//
// // Handle "Off Notify" (when switch 2 is turned off)
// if (!switchStates2[reversedIndex] && hasSoundPlayedBefore[reversedIndex]) { // Agar switch 2 OFF ho aur pehle sound play ho chuka ho
// soundPlayed[reversedIndex] = false; // Sound flag ko reset kar diya gaya hai.
// }
// });
// },
// )
