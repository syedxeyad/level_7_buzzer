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