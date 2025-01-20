// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   WaterLevelIndicator({required this.index, required this.currentLevel, this.isWaterLevelRow = false});
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final List<String> waterLevels = [
//       "100%",
//       "90%",
//       "75%",
//       "60%",
//       "45%",
//       "30%",
//       "15%"
//     ];
//
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         // Wrap LED and text in Row to align them horizontally
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // LED Circle
//             Container(
//               width: 30.0,
//               height: 30.0,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: isWaterLevelRow
//                     ? Colors.transparent // No LED for water level row
//                     : (index <= currentLevel && index < 7)
//                     ? getLEDColor(index)
//                     : Colors.transparent,
//                 border: Border.all(color: Colors.black, width: 2),
//               ),
//             ),
//             SizedBox(width: 10), // Spacing between LED and text
//             // Text Display
//             SizedBox(
//               width: 60, // Consistent width for alignment
//               child: Text(
//                 isWaterLevelRow
//                     ? "Water Level" // Display "Water Level" for the eighth row
//                     : waterLevels[6 - index], // Display percentage for rows 0-6
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 16.0),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // Special case for the 8th row: Display "Water Level" text only
//       return Center(
//         child: Text(
//           'Water Level',
//           style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//         ),
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: (index! <= currentLevel) ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10), // Spacing between LED and text
//           // Text Display
//           SizedBox(
//             width: 60, // Consistent width for alignment
//             child: Text(
//               waterLevels[6 - index!], // Display percentage for rows 0–6
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }

// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the 8th row, include text and LED inside the same Column
//         return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent, // No LED for the 8th row
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(height: 8), // Space between LED and text
//           Text(
//             'Water Level', // Display text in the 8th row
//             style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: (index! <= currentLevel) ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10), // Spacing between LED and text
//           // Text Display
//           SizedBox(
//             width: 60, // Consistent width for alignment
//             child: Text(
//               waterLevels[6 - index!], // Display percentage for rows 0–6
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the 8th row, we only display the "Water Level" text with no LED
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start, // Align content to the left
//         crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
//         children: [
//           // LED Circle (transparent for the 8th row)
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent, // No LED for the 8th row
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10), // Space between LED and text
//           // Water Level Text
//           SizedBox(
//             width: 60, // Consistent width for alignment (same as other rows)
//             child: Text(
//               'Water Level', // Display text in the 8th row
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start, // Align content to the left
//         crossAxisAlignment: CrossAxisAlignment.center, // Align items vertically
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: (index! <= currentLevel) ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10), // Spacing between LED and text
//           // Text Display
//           SizedBox(
//             width: 60, // Consistent width for alignment
//             child: Text(
//               waterLevels[6 - index!], // Display percentage for rows 0–6
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }

// import 'package:flutter/material.dart';
// class WaterLevelIndicator extends StatelessWidget {
//   final int index;
//   final int currentLevel;
//   final Function(bool) onLEDGlow; // Add the callback parameter
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     required this.onLEDGlow, // Add the callback parameter
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool isOn = currentLevel >= index;
//
//     // Trigger the callback when the LED status changes
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       onLEDGlow(isOn); // Call the callback with the current LED state
//     });
//
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: isOn ? Colors.blue : Colors.grey,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow; // Optional callback for LED state changes
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the "Water Level" row, only display text with no LED
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Placeholder LED (transparent for the "Water Level" row)
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Water Level Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               'Water Level',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       bool isOn = index! <= currentLevel;
//
//       // Trigger the callback if the LED state changes
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         if (onLEDGlow != null) {
//           onLEDGlow!(isOn);
//         }
//       });
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isOn ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Percentage Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               waterLevels[6 - index!],
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow;  // Optional callback for LED state changes
//   final bool isWaterLevelRow;  // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the "Water Level" row, only display text with no LED
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Placeholder LED (transparent for the "Water Level" row)
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Water Level Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               'Water Level',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       bool isOn = index! <= currentLevel;
//
//       // Trigger the callback if the LED state changes
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         if (onLEDGlow != null) {
//           onLEDGlow!(isOn);
//         }
//       });
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isOn ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Percentage Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               waterLevels[6 - index!],
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
// import 'audio_player_manager.dart'; // Import the AudioPlayerManager
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow; // Optional callback for LED state changes
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//   final AudioPlayerManager audioPlayerManager; // To handle sound playback
//
//   const WaterLevelIndicator({
//     Key? key,
//     this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//     this.isWaterLevelRow = false,
//     required this.audioPlayerManager, // Pass the instance of AudioPlayerManager
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the "Water Level" row, only display text with no LED
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Placeholder LED (transparent for the "Water Level" row)
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Water Level Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               'Water Level',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       bool isOn = index! <= currentLevel;
//
//       // Trigger the callback if the LED state changes
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         if (onLEDGlow != null) {
//           onLEDGlow!(isOn);
//         }
//
//         // Play beep sound when the LED is glowing and "On Notify" switch is on
//         if (isOn) {
//           audioPlayerManager.playBeepSound('notification.mp3');
//         }
//       });
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isOn ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Percentage Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               waterLevels[6 - index!],
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int? index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow; // Optional callback for LED state changes
//   final bool isWaterLevelRow; // Flag to check if this is the 8th row for "Water Level"
//
//   const WaterLevelIndicator({
//     Key? key,
//     this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//     this.isWaterLevelRow = false,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (isWaterLevelRow) {
//       // For the "Water Level" row, only display text with no LED
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // Placeholder LED (transparent for the "Water Level" row)
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Water Level Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               'Water Level',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ],
//       );
//     } else {
//       // Standard rows: Display LED and corresponding percentage
//       final List<String> waterLevels = [
//         "100%",
//         "90%",
//         "75%",
//         "60%",
//         "45%",
//         "30%",
//         "15%"
//       ];
//
//       bool isOn = index! <= currentLevel;
//
//       // Trigger the callback if the LED state changes
//       WidgetsBinding.instance.addPostFrameCallback((_) {
//         if (onLEDGlow != null) {
//           onLEDGlow!(isOn);
//         }
//       });
//
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // LED Circle
//           Container(
//             width: 30.0,
//             height: 30.0,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: isOn ? getLEDColor(index!) : Colors.transparent,
//               border: Border.all(color: Colors.black, width: 2),
//             ),
//           ),
//           SizedBox(width: 10),
//           // Percentage Text
//           SizedBox(
//             width: 60,
//             child: Text(
//               waterLevels[6 - index!],
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16.0),
//             ),
//           ),
//         ],
//       );
//     }
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool isOn = index < currentLevel; // Make sure LEDs only glow below current level
//
//     // If level is 0, make sure all LEDs are off
//     if (currentLevel == 0) {
//       isOn = false;
//     }
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (onLEDGlow != null) {
//         onLEDGlow!(isOn);
//       }
//     });
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatelessWidget {
//   final int index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool isOn = index < currentLevel;
//
//     if (currentLevel == 0) {
//       isOn = false;
//     }
//
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (onLEDGlow != null) {
//         onLEDGlow!(isOn);
//       }
//     });
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatefulWidget {
//   final int index;
//   final int currentLevel;
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   @override
//   _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
// }
//
// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Update the state if the LED's state changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only trigger the sound if the LED turns on
//       if (isOn) {
//         // Play sound logic goes here
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true); // Example sound trigger
//         }
//       } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Example sound stop
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';

class WaterLevelIndicator extends StatefulWidget {
  final int index;
  final int currentLevel;
  final Function(bool)? onLEDGlow;

  const WaterLevelIndicator({
    Key? key,
    required this.index,
    required this.currentLevel,
    this.onLEDGlow,
  }) : super(key: key);

  @override
  _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
}

// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Update the state if the LED's state changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only trigger the sound if the LED turns on
//       if (isOn) {
//         // Play sound logic goes here
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true); // Example sound trigger
//         }
//       } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Example sound stop
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }

class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
  bool isOn = false;

  Color getLEDColor(int index) {
    if (index >= 6) {
      return Colors.blue;
    } else if (index >= 3) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine whether the water level has passed the threshold for this level
    bool newIsOn = widget.index < widget.currentLevel;
    if (widget.currentLevel == 0) {
      newIsOn = false;
    }

    // Check if the state has changed and update accordingly
    if (isOn != newIsOn) {
      setState(() {
        isOn = newIsOn; // Update isOn when the state changes
      });

      // Only trigger the sound if the LED is turned on
      if (isOn) {
        // Play sound only when LED glows
        if (widget.onLEDGlow != null) {
          widget.onLEDGlow!(true); // Play sound
        }
      } else {
        // Stop sound if the LED is turned off
        if (widget.onLEDGlow != null) {
          widget.onLEDGlow!(false); // Stop sound
        }
      }
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 30.0,
          height: 30.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isOn ? getLEDColor(widget.index) : Colors.transparent,
            border: Border.all(color: Colors.black, width: 2),
          ),
        ),
        SizedBox(width: 10),
        SizedBox(
          width: 60,
          child: Text(
            ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}



// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatefulWidget {
//   final int index;
//   final int currentLevel;
//   final bool isSwitchOn; // Add a flag for switch state (on/off)
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     required this.isSwitchOn, // Pass switch state
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   @override
//   _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
// }
//
// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//
//     // If the current level is zero, make sure LED is off
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Only update state if LED status changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only play sound if the switch is ON and the LED turns ON
//       // if (isOn && widget.isSwitchOn) {
//       //   if (widget.onLEDGlow != null) {
//       //     widget.onLEDGlow!(true); // Play sound when LED glows and switch is ON
//       //   }
//       if (isOn && widget.isSwitchOn && !soundPlayed[widget.index]) {
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true);
//         }
//         soundPlayed[widget.index] = true; // Sirf ek baar sound bajegi
//
//
//     } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Stop sound if LED is off or switch is off
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatefulWidget {
//   final int index;
//   final int currentLevel;
//   final bool isSwitchOn; // Add a flag for switch state (on/off)
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     required this.isSwitchOn, // Pass switch state
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   @override
//   _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
// }
//
// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//
//     // If the current level is zero, make sure LED is off
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Only update state if LED status changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only play sound if the switch is ON and the LED turns ON
//       if (isOn && widget.isSwitchOn && !soundPlayed[widget.index]) {
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true); // Play sound when LED glows and switch is ON
//         }
//         soundPlayed[widget.index] = true; // Sirf ek baar sound bajegi
//       } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Stop sound if LED is off or switch is off
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatefulWidget {
//   final int index;
//   final int currentLevel;
//   final bool isSwitchOn; // Add a flag for switch state (on/off)
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     required this.isSwitchOn, // Pass switch state
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   @override
//   _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
// }
//
// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//
//     // If the current level is zero, make sure LED is off
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Only update state if LED status changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only play sound if the switch is ON and the LED turns ON
//       if (isOn && widget.isSwitchOn && !widget.onLEDGlow!.call(false)) {
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true); // Play sound when LED glows and switch is ON
//         }
//       } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Stop sound if LED is off or switch is off
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelIndicator extends StatefulWidget {
//   final int index;
//   final int currentLevel;
//   final bool isSwitchOn; // Add a flag for switch state (on/off)
//   final Function(bool)? onLEDGlow;
//
//   const WaterLevelIndicator({
//     Key? key,
//     required this.index,
//     required this.currentLevel,
//     required this.isSwitchOn, // Pass switch state
//     this.onLEDGlow,
//   }) : super(key: key);
//
//   @override
//   _WaterLevelIndicatorState createState() => _WaterLevelIndicatorState();
// }
//
// class _WaterLevelIndicatorState extends State<WaterLevelIndicator> {
//   bool isOn = false;
//
//   Color getLEDColor(int index) {
//     if (index >= 6) {
//       return Colors.blue;
//     } else if (index >= 3) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool newIsOn = widget.index < widget.currentLevel;
//
//     // If the current level is zero, make sure LED is off
//     if (widget.currentLevel == 0) {
//       newIsOn = false;
//     }
//
//     // Only update state if LED status changes
//     if (isOn != newIsOn) {
//       setState(() {
//         isOn = newIsOn;
//       });
//
//       // Only play sound if the switch is ON and the LED turns ON
//       if (isOn && widget.isSwitchOn && !soundPlayed[widget.index]) {
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(true); // Play sound when LED glows and switch is ON
//         }
//         soundPlayed[widget.index] = true; // Sirf ek baar sound bajegi
//       } else {
//         // Stop sound if necessary
//         if (widget.onLEDGlow != null) {
//           widget.onLEDGlow!(false); // Stop sound if LED is off or switch is off
//         }
//       }
//     }
//
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 30.0,
//           height: 30.0,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: isOn ? getLEDColor(widget.index) : Colors.transparent,
//             border: Border.all(color: Colors.black, width: 2),
//           ),
//         ),
//         SizedBox(width: 10),
//         SizedBox(
//           width: 60,
//           child: Text(
//             ["100%", "90%", "75%", "60%", "45%", "30%", "15%"][6 - widget.index],
//             textAlign: TextAlign.center,
//             style: TextStyle(fontSize: 16.0),
//           ),
//         ),
//       ],
//     );
//   }
// }