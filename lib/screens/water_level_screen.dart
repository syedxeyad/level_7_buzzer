//   import 'dart:async';
//   import 'package:flutter/material.dart';
//   import 'package:audioplayers/audioplayers.dart';
//   // import '../widgets/led_indicator.dart';
//   import '../widgets/level_dropdown.dart';
//   // import '../widgets/water_level_text.dart'; // Import the new file
//   import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//   class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
//   }
//
//   class _WaterLevelScreenState extends State<WaterLevelScreen> {
//     final double ledSize = 30.0;
//     final double spacing = 20.0;
//     final double rowSpacing = 15.0;
//     List<bool> switchStates1 = List.generate(14, (index) => false); // For the first switch
//     List<bool> switchStates2 = List.generate(14, (index) => false); // For the second switch
//     // Removed the waterLevels list since percentages are disabled
//
//     // final List<String> waterLevels = [
//      //   "15%",
//     //   "30%",
//     //   "45%",
//     //   "60%",
//     //   "75%",
//     //   "90%",
//     //   "100%"
//     // ];
//
//     int currentLevel = 0;
//     Timer? timer;
//     bool isIncreasing = true;
//     int targetLevel = 0;
//
//     final AudioPlayer _audioPlayer = AudioPlayer();
//     String? _selectedBeepSound = 'beep.mp3';
//
//     @override
//     void initState() {
//       super.initState();
//       startAnimation(currentLevel);
//     }
//
//     void startAnimation(int newTargetLevel) {
//       if (newTargetLevel == currentLevel) return;
//
//       isIncreasing = newTargetLevel > currentLevel;
//       timer?.cancel();
//       timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//         setState(() {
//           if (isIncreasing) {
//             if (currentLevel < newTargetLevel) {
//               currentLevel++;
//               if (currentLevel == 6) {
//                 _playBeepSound();
//               }
//             } else {
//               timer.cancel();
//             }
//           } else {
//             if (currentLevel > newTargetLevel) {
//               currentLevel--;
//             } else {
//               timer.cancel();
//             }
//           }
//         });
//       });
//     }
//
//     Future<void> _playBeepSound() async {
//       try {
//         await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//       } catch (e) {
//         print('Error playing beep sound: $e');
//       }
//     }
//
//     Color getLEDColor(int index) {
//       if (index >= 6) {
//         return Colors.blue;
//       } else if (index >= 3) {
//         return Colors.green;
//       } else {
//         return Colors.red;
//       }
//     }
//
//     // Widget buildLEDIndicator(int index) {
//     //   return LedIndicator(index: index, currentLevel: currentLevel);
//     // }
//
//     // Widget buildRow(int index) {
//     //   int reversedIndex = 6 - index;
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           buildLEDIndicator(reversedIndex),
//     //           SizedBox(width: spacing),
//     //           Text(waterLevels[reversedIndex], style: TextStyle(fontSize: 16.0)),
//     //           SizedBox(width: spacing),
//     //           Switch(
//     //             value: switchStates[reversedIndex],
//     //             onChanged: (value) {
//     //               setState(() {
//     //                 switchStates[reversedIndex] = value;
//     //               });
//     //             },
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
//     // Widget buildRow(int index) {
//     //   int reversedIndex = 6 - index;
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           buildLEDIndicator(reversedIndex),
//     //           SizedBox(width: spacing),
//     //           Text(waterLevels[reversedIndex], style: TextStyle(fontSize: 16.0)),
//     //           SizedBox(width: spacing),
//     //           // Add multiple switches next to each other
//     //           Row(
//     //             children: [
//     //               Switch(
//     //                 value: switchStates[reversedIndex],
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //               Switch(
//     //                 value: switchStates[reversedIndex], // Same state for demonstration
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //             ],
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
//     // Widget buildRow(int index) {
//     //   int reversedIndex = 6 - index;
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         children: [
//     //           buildLEDIndicator(reversedIndex),
//     //           SizedBox(width: spacing),
//     //           Text(waterLevels[reversedIndex], style: TextStyle(fontSize: 16.0)),
//     //           SizedBox(width: spacing),
//     //           // Add multiple switches next to each other with fixed spacing
//     //           Row(
//     //             children: [
//     //               Switch(
//     //                 value: switchStates[reversedIndex],
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //               SizedBox(width: 10), // Fixed spacing between switches
//     //               Switch(
//     //                 value: switchStates[reversedIndex], // Same state for demonstration
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //             ],
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
//     // Widget buildRow(int index) {
//     //   int reversedIndex = 6 - index;
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: [
//     //           buildLEDIndicator(reversedIndex),
//     //           SizedBox(width: 20), // Increased spacing between LED and text
//     //           Text(waterLevels[reversedIndex], style: TextStyle(fontSize: 16.0)),
//     //           SizedBox(width: 20), // Increased spacing between text and switches
//     //           // Row of switches with fixed spacing
//     //           Row(
//     //             mainAxisAlignment: MainAxisAlignment.center,
//     //             children: [
//     //               Switch(
//     //                 value: switchStates[reversedIndex],
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //               SizedBox(width:22), // Spacing between the first and second switches
//     //               Switch(
//     //                 value: switchStates[reversedIndex], // Same state for demonstration
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates[reversedIndex] = value;
//     //                   });
//     //                 },
//     //               ),
//     //             ],
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
//
//     // Old code that manually created LEDIndicator and water level text
//
//     // Widget buildRow(int index) {
//     //   int reversedIndex = 6 - index;
//     //   bool _isSwitchOn = false; // Initialize the switch state outside the widget tree
//     //
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: [
//     //           // buildLEDIndicator(reversedIndex),
//     //           // SizedBox(width: 20), // Spacing between LED and text
//     //           // WaterLevelText(index: reversedIndex), // Using the new widget
//     //           SizedBox(width: 20), // Spacing between text and switches
//     //           Row(
//     //               mainAxisAlignment: MainAxisAlignment.center,
//     //             children: [
//     //
//     //               Switch(
//     //                 value: switchStates1[reversedIndex], // Use the state for the first switch
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates1[reversedIndex] = value; // Update the state of the first switch
//     //                   });
//     //                 },
//     //                 activeColor: Colors.green,
//     //                   inactiveThumbColor: Colors.red,
//     //               ),
//     //               SizedBox(width: 22), // Spacing between the first and second switches
//     //               Switch(
//     //                 value: switchStates2[reversedIndex], // Use the state for the second switch
//     //                 onChanged: (value) {
//     //                   setState(() {
//     //                     switchStates2[reversedIndex] = value; // Update the state of the second switch
//     //                   });
//     //                 },
//     //                 activeColor: Colors.green,
//     //                 inactiveThumbColor: Colors.red,
//     //               ),
//     //             ],
//     //           ),
//     //
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
//
// // Updated code using WaterLevelIndicator:
// //     Widget buildRow(int index) {
// //       int reversedIndex = 6 - index;
// //       // bool _isSwitchOn = false; // Initialize the switch state outside the widget tree
// //
// //       return Padding(
// //         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
// //         child: IntrinsicHeight(
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: [
// //               WaterLevelIndicator( // Updated: Using WaterLevelIndicator widget
// //                 index: reversedIndex,
// //                 currentLevel: currentLevel,
// //               ),
// //               SizedBox(width: 20), // Spacing between LED and switches
// //             ],
// //           ),
// //         ),
// //       );
// //     }
//     //latest///
//     // Widget buildRow(int rowIndex) {
//     //   int reversedIndex = 6 - rowIndex;  // Reverse index for correct order
//     //   return Padding(
//     //     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     child: IntrinsicHeight(
//     //       child: Row(
//     //         mainAxisAlignment: MainAxisAlignment.center,
//     //         crossAxisAlignment: CrossAxisAlignment.center,
//     //         children: [
//     //           WaterLevelIndicator(
//     //             index: reversedIndex,  // Pass reversedIndex here
//     //             currentLevel: currentLevel,
//     //           ),
//     //           SizedBox(width: 20), // Spacing between LED and switches
//     //           SwitchWidget( // Delegating switch management
//     //             switchState1: switchStates1[reversedIndex],
//     //             switchState2: switchStates2[reversedIndex],
//     //             onSwitch1Changed: (value) {
//     //               setState(() {
//     //                 switchStates1[reversedIndex] = value;
//     //               });
//     //             },
//     //             onSwitch2Changed: (value) {
//     //               setState(() {
//     //                 switchStates2[reversedIndex] = value;
//     //               });
//     //             },
//     //             isLastRow: rowIndex == 7, // Set to true only for the eighth row
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //   );
//     // }
// // water level with led at center
//     // Widget buildRow(int rowIndex) {
//     //
//     //   if (rowIndex < 7) {
//     //     int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             WaterLevelIndicator(
//     //               index: reversedIndex, // Pass reversedIndex here
//     //               currentLevel: currentLevel,
//     //             ),
//     //             SizedBox(width: 20), // Spacing between LED and switches
//     //             SwitchWidget(
//     //               switchState1: switchStates1[reversedIndex],
//     //               switchState2: switchStates2[reversedIndex],
//     //               onSwitch1Changed: (value) {
//     //                 setState(() {
//     //                   switchStates1[reversedIndex] = value;
//     //                 });
//     //               },
//     //               onSwitch2Changed: (value) {
//     //                 setState(() {
//       //                   switchStates2[reversedIndex] = value;
//     //                 });
//     //               },
//     //               isLastRow: false, // Not the last row
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   } else {
//     //     // Handle the eighth row (Water Level row)
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             Container(
//     //               width: 30.0,
//     //               height: 30.0,
//     //               decoration: BoxDecoration(
//     //                 shape: BoxShape.circle,
//     //                 color: Colors.transparent, // Transparent LED for the eighth row
//     //                 border: Border.all(color: Colors.black, width: 2),
//     //               ),
//     //             ),
//     //             SizedBox(width: 20), // Spacing between "LED" and text
//     //             SizedBox(
//     //               width: 100,
//     //               child: Text(
//     //                 'Water Level', // Display text in the eighth row
//     //                 textAlign: TextAlign.center,
//     //                 style: TextStyle(fontSize: 16.0),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   }
//     // }
//     // Widget buildRow(int rowIndex) {
//     //   if (rowIndex < 7) {
//     //     int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             WaterLevelIndicator(
//     //               index: reversedIndex, // Pass reversedIndex here
//     //               currentLevel: currentLevel,
//     //             ),
//     //             SizedBox(width: 20), // Spacing between LED and switches
//     //             SwitchWidget(
//     //               switchState1: switchStates1[reversedIndex],
//     //               switchState2: switchStates2[reversedIndex],
//     //               onSwitch1Changed: (value) {
//     //                 setState(() {
//     //                   switchStates1[reversedIndex] = value;
//     //                 });
//     //               },
//     //               onSwitch2Changed: (value) {
//     //                 setState(() {
//     //                   switchStates2[reversedIndex] = value;
//     //                 });
//     //               },
//     //               isLastRow: false, // Not the last row
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   } else {
//     //     // Handle the eighth row (Water Level row)
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             Container(
//     //               width: 30.0,
//     //               height: 30.0,
//     //               decoration: BoxDecoration(
//     //                 shape: BoxShape.circle,
//     //                 color: Colors.transparent, // Transparent LED for the eighth row
//     //                 border: Border.all(color: Colors.black, width: 2),
//     //               ),
//     //             ),
//     //             SizedBox(width: 20), // Spacing between "LED" and text
//     //             SizedBox(
//     //               width: 100,
//     //               child: Text(
//     //                 '10%', // Display text in the eighth row
//     //                 textAlign: TextAlign.center,
//     //                 style: TextStyle(fontSize: 16.0),
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   }
//     // }
//
//     //water level text in eighth row
//     //
//     // Widget buildRow(int rowIndex) {
//     //   if (rowIndex < 7) {
//     //     int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             WaterLevelIndicator(
//     //               index: reversedIndex, // Pass reversedIndex here
//     //               currentLevel: currentLevel,
//     //               isWaterLevelRow: false, // Not the last row
//     //             ),
//     //             SizedBox(width: 20), // Spacing between LED and switches
//     //             SwitchWidget(
//     //               switchState1: switchStates1[reversedIndex],
//     //               switchState2: switchStates2[reversedIndex],
//     //               onSwitch1Changed: (value) {
//     //                 setState(() {
//     //                   switchStates1[reversedIndex] = value;
//     //                 });
//     //               },
//     //               onSwitch2Changed: (value) {
//     //                 setState(() {
//     //                   switchStates2[reversedIndex] = value;
//     //                 });
//     //               },
//     //               isLastRow: false, // Not the last row
//     //             ),
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   }
//     //   return Container();
//     //
//     //   else {
//     //     // Handle the eighth row (Water Level row)
//     //     // return Padding(
//     //     //   padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //     //   child: IntrinsicHeight(
//     //     //     child: Row(
//     //     //       mainAxisAlignment: MainAxisAlignment.center,
//     //     //       crossAxisAlignment: CrossAxisAlignment.center,
//     //     //       children: [
//     //     //         WaterLevelIndicator(
//     //     //           // index: 7, // For the last row
//     //     //           index: null, // No LED for the eighth row
//     //     //           currentLevel: currentLevel,
//     //     //           isWaterLevelRow: true, // Special flag for water level row
//     //     //
//     //     //         ),
//     //     //         SizedBox(width: 20), // Spacing between LED and text
//     //     //         // SizedBox(
//     //     //         //   width: 150,
//     //     //         //   child: Text(
//     //     //         //     'Water Level', // Display text in the eighth row
//     //     //         //     textAlign: TextAlign.left,
//     //     //         //     style: TextStyle(fontSize: 16.0),
//     //     //         //   ),
//     //     //         // ),
//     //     //       ],
//     //     //     ),
//     //     //   ),
//     //     // );
//     //   }
//     // }
//
//     // Widget buildRow(int rowIndex) {
//     //   if (rowIndex < 7) {
//     //     int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//     //     return Padding(
//     //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//     //       child: IntrinsicHeight(
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           crossAxisAlignment: CrossAxisAlignment.center,
//     //           children: [
//     //             WaterLevelIndicator(
//     //               index: reversedIndex, // Pass reversedIndex here
//     //               currentLevel: currentLevel,
//     //               // isWaterLevelRow: false, // Not the last row
//     //             ),
//     //             SizedBox(width: 20), // Spacing between LED and switches
//     //             SwitchWidget(
//     //               switchState1: switchStates1[reversedIndex],
//     //               switchState2: switchStates2[reversedIndex],
//     //               onSwitch1Changed: (value) {
//     //                 setState(() {
//     //                   switchStates1[reversedIndex] = value;
//     //                 });
//     //               },
//     //               onSwitch2Changed: (value) {
//     //                 setState(() {
//     //                   switchStates2[reversedIndex] = value;
//     //                 });
//     //               },
//     //  //             isLastRow: false, // Not the last row
//     //               isLastRow: rowIndex == 6, // Only true for the last row
//     //             ),
//     //
//     //           ],
//     //         ),
//     //       ),
//     //     );
//     //   }
//     //
//     //   // Return an empty container when rowIndex is 7 or higher
//     //   return Container();
//     // }
//     Widget buildRow(int rowIndex) {
// //      if (rowIndex < 7)
//       if (rowIndex < 8) { // Update condition to allow 8 rows
//
// //        int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//         int reversedIndex = 7 - rowIndex; // Reverse index for correct order
//
//         return Padding(
//           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//           child: IntrinsicHeight(
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 WaterLevelIndicator(
//                   index: reversedIndex, // Pass reversedIndex here
//                   currentLevel: currentLevel,
//                 ),
//                 SizedBox(width: 20), // Spacing between LED and switches
//                 SwitchWidget(
//                   switchState1: switchStates1[reversedIndex],
//                   switchState2: switchStates2[reversedIndex],
//                   onSwitch1Changed: (value) {
//                     setState(() {
//                       switchStates1[reversedIndex] = value;
//                     });
//                   },
//                   onSwitch2Changed: (value) {
//                     setState(() {
//                       switchStates2[reversedIndex] = value;
//                     });
//                   },
// //                  isLastRow: rowIndex == 6, // Only true for the last row
//                   isLastRow: rowIndex == 7, // Update for the last row (10% row)
//
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//
//       // Return an empty container when rowIndex is 7 or higher
//       return Container();
//     }
//
//     @override
//     void dispose() {
//       timer?.cancel();
//       _audioPlayer.dispose();
//       super.dispose();
//     }
//
//     //   @override
//     //   Widget build(BuildContext context) {
//     //   return Scaffold(
//     //     appBar: AppBar(title: Text('Water Level Monitor')
//     //   ),
//     //   body: Center
//     //   (
//     //   child
//     //   :
//     //   Column
//     //   (
//     //     mainAxisAlignment
//     //   :
//     //   MainAxisAlignment
//     //   .
//     //   center
//     //   ,
//     //   // crossAxisAlignment: CrossAxisAlignment.start,  // Align all children to the start
//     //   children:
//     //   [
//     //   Column(
//     //   // children: List.generate(7, (index) => buildRow(index)),
//     //       children: List.
//     //   generate
//     //   (
//     //   8
//     //   ,
//     //   (
//     //   index
//     //   ) {
//     //     if (index == 7) {
//     //       // New row with "Water Level" label at the bottom
//     //       return Padding(
//     //         padding: const EdgeInsets.all(8.0),
//     //         child: Row(
//     //           mainAxisAlignment: MainAxisAlignment.center,
//     //           // Centering the content
//     //           children: [
//     //             Text(
//     //               "Water Level", // The new label text
//     //               style: TextStyle(
//     //                 fontSize: 18,
//     //                 fontWeight: FontWeight.bold,
//     //                 color: Colors.black, // Customize text color as needed
//     //               ),
//     //             ),
//     //
//     //           ],
//     //         ),
//     //       );
//     //     } else {
//     //       return buildRow(index); // Existing rows with LEDs
//     //     })
//     //     ),
//     //
//     //
//     //
//     //
//     // //
//     // //
//     // //
//     // //
//     // //
//     // //
//     // //             SizedBox(height: 10), // Spacing between LED rows and "Water" text
//     // //             Padding(
//     // //               padding: const EdgeInsets.only(top: 20.0),
//     // // // child: Align(
//     // // //   alignment: Alignment.topLeft,  // Align "Water" text to the top left
//     // //
//     // //               child: Text(
//     // //                 "Water",
//     // //                 style: TextStyle(
//     // //                   fontSize: 16,
//     // //                   fontWeight: FontWeight.bold,
//     // //                   color: Colors.black,
//     // //                 ),
//     // //               ),
//     // //             ),
//     //
//     //   SizedBox(height: 30),
//     //   LevelDropdown(
//     //   selectedBeepSound: _selectedBeepSound!,
//     //   onSoundChanged: (String? newSound) {
//     //   setState(() {
//     //   _selectedBeepSound = newSound;
//     //     });
//     //   },
//     //   targetLevel: targetLevel,
//     //   onLevelChanged: (int? newLevel) {
//     //   setState(() {
//     //   targetLevel = newLevel!;
//     //   startAnimation(targetLevel);
//     //       });
//     //     },
//     //
//     //   ),
//     //     ],
//     //
//     //     ),
//     //     ),
//     //     );
//     //     }
//     //   }
//
//       @override
//       Widget build(BuildContext context) {
//         return Scaffold(
//           appBar: AppBar(
//             title: Text('Water Level Monitor'),
//           ),
//           body: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Column(
//                   children: List.generate(8, (index) {
//                   //children: List.generate(7, (index) {
//                     //if (index == 7) {
//                       // New row with "Water Level" label at the bottom
//                     //   return Padding(
//                     //     padding: const EdgeInsets.all(8.0),
//                     //     child: Row(
//                     //       mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equal spacing between all widgets
//                     //       // Center the content
//                     //       children: [
//                     //         Text("Water\nLevels"),
//                     //
//                     //         Text(""),
//                     //
//                     //         Text("On\nNotify"),
//                     //
//                     //         Text("Off\nNotify"),
//                     //
//                     //
//                     //       ],
//                     //     ),
//                     //   );
//                     // } else {
//                       return buildRow(index); // Existing rows with LEDs
//                     }
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 LevelDropdown(
//                   selectedBeepSound: _selectedBeepSound!,
//                   onSoundChanged: (String? newSound) {
//                     setState(() {
//                       _selectedBeepSound = newSound;
//                     });
//                   },
//                   targetLevel: targetLevel,
//                   onLevelChanged: (int? newLevel) {
//                     setState(() {
//                       targetLevel = newLevel!;
//                       startAnimation(targetLevel);
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       }
//     }

// level_dropdown

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/level_dropdown.dart';
// import '../widgets/beep_sound_dropdown.dart'; // Import the new file
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(
//       14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(
//       14, (index) => false); // For the second switch
//   // Removed the waterLevels list since percentages are disabled
//
//   // final List<String> waterLevels = [
//   //   "15%",
//   //   "30%",
//   //   "45%",
//   //   "60%",
//   //   "75%",
//   //   "90%",
//   //   "100%"
//   // ];
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'beep.mp3';
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             if (currentLevel == 6) {
//               _playBeepSound();
//             }
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//                 // isWaterLevelRow: false, // Not the last row
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: Text('Water Level Monitor'),
//   //     ),
//   //     body: Center(
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.center,
//   //         children: [
//   //           Column(
//   //             children: List.generate(8, (index) {
//   //               //children: List.generate(7, (index) {
//   //               //if (index == 7) {
//   //               // New row with "Water Level" label at the bottom
//   //               //   return Padding(
//   //               //     padding: const EdgeInsets.all(8.0),
//   //               //     child: Row(
//   //               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equal spacing between all widgets
//   //               //       // Center the content
//   //               //       children: [
//   //               //         Text("Water\nLevels"),
//   //               //
//   //               //         Text(""),
//   //               //
//   //               //         Text("On\nNotify"),
//   //               //
//   //               //         Text("Off\nNotify"),
//   //               //
//   //               //
//   //               //       ],
//   //               //     ),
//   //               //   );
//   //               // } else {
//   //               return buildRow(index); // Existing rows with LEDs
//   //             }
//   //             ),
//   //           ),
//   //           SizedBox(height: 30),
//   //           LevelDropdown(
//   //             selectedBeepSound: _selectedBeepSound!,
//   //             onSoundChanged: (String? newSound) {
//   //               setState(() {
//   //                 _selectedBeepSound = newSound;
//   //               });
//   //             },
//   //             targetLevel: targetLevel,
//   //             onLevelChanged: (int? newLevel) {
//   //               setState(() {
//   //                 targetLevel = newLevel!;
//   //                 startAnimation(targetLevel);
//   //               });
//   //             },
//   //           ),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: List.generate(8, (index) {
//                 if (index < 7) {
//                   return buildRow(index); // Existing rows with LEDs
//                 } else {
//                   // Add an extra row after the last WaterLevelIndicator
//                   return Padding(
//                     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//
//
//                     // child: Row(
//                     //   mainAxisAlignment: MainAxisAlignment.center,
//                     //   children: [
//                     //     // Column 1
//                     //
//                     //     Text('Additional Row Below Water Level Indicator'),
//                     //     // Add more widgets here as needed
//                     //   ],
//                     // ),
//
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//
//                       children: [
//                         // Column 1
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.end, // Align the column content to the right
//
//                             children: [
//                               Text('Water Level'),
//                               // Add more widgets here for Column 1 if needed
//                             ],
//                           ),
//                         ),
//                         // Column 2
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center, // Align the column content to the right
//
//                             children: [
//                               Text('        On Notify'),
//                               // Add more widgets here for Column 2 if needed
//
//                             ],
//                           ),
//                         ),
//                         // Column 3
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.stretch, // Align the column content to the right
//                             children: [
//                               Text('   Off Notify'),
//                               // Add more widgets here for Column 3 if needed
//                             ],
//                           ),
//                         ),
//                         // Column 4
//                         // Expanded(
//                         //   child: Column(
//                         //     mainAxisAlignment: MainAxisAlignment.center,
//                         //     children: [
//                         //       Text('Column 4'),
//                         //       // Add more widgets here for Column 4 if needed
//                         //     ],
//                         //   ),
//                         // ),
//                       ],
//                     ),
//                   );
//
//
//
//
//                 }
//               }),
//             ),
//             SizedBox(height: 30),
//             LevelDropdown(
//               selectedBeepSound: _selectedBeepSound!,
//               onSoundChanged: (String? newSound) {
//                 setState(() {
//                   _selectedBeepSound = newSound;
//                 });
//               },
//               targetLevel: targetLevel,
//               onLevelChanged: (int? newLevel) {
//                 setState(() {
//                   targetLevel = newLevel!;
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//
//
//   }

// without level_dropdown

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/beep_sound_dropdown.dart'; // Import the new file
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(
//       14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(
//       14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'beep.mp3';
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             if (currentLevel == 6) {
//               _playBeepSound();
//             }
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: List.generate(8, (index) {
//                 if (index < 7) {
//                   return buildRow(index); // Existing rows with LEDs
//                 } else {
//                   // Add an extra row after the last WaterLevelIndicator
//                   return Padding(
//                     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.end, // Align the column content to the right
//                             children: [
//                               Text('Water Level'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center, // Align the column content to the right
//                             children: [
//                               Text('        On Notify'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.stretch, // Align the column content to the right
//                             children: [
//                               Text('   Off Notify'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//with beep_sound_dropdown.dart

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/beep_sound_dropdown.dart'; // Import the BeepSoundDropdown widget
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'beep.mp3'; // Default beep sound
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             if (currentLevel == 6) {
//               _playBeepSound();
//             }
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Beep Sound Dropdown at the top
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: BeepSoundDropdown(
//                 selectedBeepSound: _selectedBeepSound!,
//                 onSoundChanged: (newSound) {
//                   setState(() {
//                     _selectedBeepSound = newSound;
//                   });
//                 },
//               ),
//             ),
//             Column(
//               children: List.generate(8, (index) {
//                 if (index < 7) {
//                   return buildRow(index); // Existing rows with LEDs
//                 } else {
//                   // Add an extra row after the last WaterLevelIndicator
//                   return Padding(
//                     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.end, // Align the column content to the right
//                             children: [
//                               Text('Water Level'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center, // Align the column content to the right
//                             children: [
//                               Text('        On Notify'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.stretch, // Align the column content to the right
//                             children: [
//                               Text('   Off Notify'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// with beep and level at top
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/beep_sound_dropdown.dart'; // Import the BeepSoundDropdown widget
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'beep.mp3'; // Default beep sound
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             if (currentLevel == 6) {
//               _playBeepSound();
//             }
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Beep Sound Dropdown at the top
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: BeepSoundDropdown(
//                 selectedBeepSound: _selectedBeepSound!,
//                 onSoundChanged: (newSound) {
//                   setState(() {
//                     _selectedBeepSound = newSound;
//                   });
//                 },
//               ),
//             ),
//             // Water Level Dropdown at the top
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: WaterLevelDropdown(
//                 targetLevel: targetLevel,
//                 onLevelChanged: (newLevel) {
//                   setState(() {
//                     targetLevel = newLevel ?? 0; // Default to level 0 if null
//                     startAnimation(targetLevel);
//                   });
//                 },
//               ),
//             ),
//             Column(
//               children: List.generate(8, (index) {
//                 if (index < 7) {
//                   return buildRow(index); // Existing rows with LEDs
//                 } else {
//                   // Add an extra row after the last WaterLevelIndicator
//                   return Padding(
//                     padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.end, // Align the column content to the right
//                             children: [
//                               Text('Water Level'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center, // Align the column content to the right
//                             children: [
//                               Text('        On Notify'),
//                             ],
//                           ),
//                         ),
//                         Expanded(
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.stretch, // Align the column content to the right
//                             children: [
//                               Text('   Off Notify'),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   );
//                 }
//               }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// at the bootom of screen
//
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/beep_sound_dropdown.dart'; // Import the BeepSoundDropdown widget
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(
//       14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(
//       14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'beep.mp3'; // Default beep sound
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             if (currentLevel == 6) {
//               _playBeepSound();
//             }
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           // Main content (LEDs, Switches, etc.)
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // The existing rows with LEDs and switches
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index); // Existing rows with LEDs
//                       } else {
//                         // Add an extra row after the last WaterLevelIndicator
//                         return Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment
//                                       .stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Dropdowns at the bottom
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: BeepSoundDropdown(
//               selectedBeepSound: _selectedBeepSound!,
//               onSoundChanged: (newSound) {
//                 setState(() {
//                   _selectedBeepSound = newSound;
//                 });
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0; // Default to level 0 if null
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart'; // Import the WaterLevelIndicator widget
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(
//       14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(
//       14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   // void startAnimation(int newTargetLevel) {
//   //   if (newTargetLevel == currentLevel) return;
//   //
//   //   isIncreasing = newTargetLevel > currentLevel;
//   //   timer?.cancel();
//   //   timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//   //     setState(() {
//   //       if (isIncreasing) {
//   //         if (currentLevel < newTargetLevel) {
//   //           currentLevel++;
//   //           // if (currentLevel == 6) {
//   //           //   _playBeepSound();
//   //           // }
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       } else {
//   //         if (currentLevel > newTargetLevel) {
//   //           currentLevel--;
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       }
//   //     });
//   //   });
//   // }
//   // void startAnimation(int newTargetLevel) {
//   //   if (newTargetLevel == currentLevel) return;
//   //
//   //   isIncreasing = newTargetLevel > currentLevel;
//   //   timer?.cancel();
//   //   timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//   //     setState(() {
//   //       if (isIncreasing) {
//   //         if (currentLevel < newTargetLevel) {
//   //           currentLevel++;
//   //           if (currentLevel == 3) {
//   //             _playBeepSound(); // Play sound when reaching 30%
//   //           }
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       } else {
//   //         if (currentLevel > newTargetLevel) {
//   //           currentLevel--;
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       }
//   //     });
//   //   });
//   // }
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex, // Pass reversedIndex here
//                 currentLevel: currentLevel,
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               // SwitchWidget(
//               //   switchState1: switchStates1[reversedIndex],
//               //   switchState2: switchStates2[reversedIndex],
//               //   onSwitch1Changed: (value) {
//               //     setState(() {
//               //       switchStates1[reversedIndex] = value;
//               //     });
//               //   },
//               //   onSwitch2Changed: (value) {
//               //     setState(() {
//               //       switchStates2[reversedIndex] = value;
//               //     });
//               //   },
//               //   isLastRow: false, // Not the last row
//               // ),
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     if (reversedIndex == 3 && value) { // Check if it's the 60% level and the switch is ON
//                       _playBeepSound(); // Play the sound
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//
//             ],
//           ),
//         ),
//       );
//     }
//
//     // Return an empty container when rowIndex is 7 or higher
//     return Container();
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           // Main content (LEDs, Switches, etc.)
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // The existing rows with LEDs and switches
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index); // Existing rows with LEDs
//                       } else {
//                         // Add an extra row after the last WaterLevelIndicator
//                         return Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment
//                                       .stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // Remove the BeepSoundDropdown widget below
//           // Padding(
//           //   padding: const EdgeInsets.all(16.0),
//           //   child: BeepSoundDropdown(
//           //     selectedBeepSound: _selectedBeepSound!,
//           //     onSoundChanged: (newSound) {
//           //       setState(() {
//           //         _selectedBeepSound = newSound;
//           //       });
//           //     },
//           //   ),
//           // ),
//           // WaterLevelDropdown at the bottom
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0; // Default to level 0 if null
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(
//       14, (index) => false); // For the first switch
//   List<bool> switchStates2 = List.generate(
//       14, (index) => false); // For the second switch
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//           } else {
//             timer.cancel();
//           }
//         }
//       });
//     });
//   }
//
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound!));
//     } catch (e) {
//       print('Error playing beep sound: $e');
//     }
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // WaterLevelIndicator(
//               //   index: reversedIndex, // Pass reversedIndex here
//               //   currentLevel: currentLevel,
//               //   onLEDGlow: (bool isOn) {
//               //     // Check if the LED for 30% (index 3) glows
//               //     // if (reversedIndex == 3 && isOn) {
//               //     //   _playBeepSound(); // Play the beep sound when 30% LED glows
//               //     // }
//               //   },
//               // ),
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _playBeepSound();
//                   }
//                 },
//               ),
//
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     // You can decide to trigger additional actions here if needed
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//                 isLastRow: false, // Not the last row
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           // Main content (LEDs, Switches, etc.)
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   // The existing rows with LEDs and switches
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index); // Existing rows with LEDs
//                       } else {
//                         // Add an extra row after the last WaterLevelIndicator
//                         return Padding(
//                           padding: EdgeInsets.symmetric(
//                               vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment
//                                       .stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           // WaterLevelDropdown at the bottom
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0; // Default to level 0 if null
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
// import '../utils/audio_player.dart';
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   // void startAnimation(int newTargetLevel) {
//   //   if (newTargetLevel == currentLevel) return;
//   //
//   //   isIncreasing = newTargetLevel > currentLevel;
//   //   timer?.cancel();
//   //   timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//   //     setState(() {
//   //       if (isIncreasing) {
//   //         if (currentLevel < newTargetLevel) {
//   //           currentLevel++;
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       } else {
//   //         if (currentLevel > newTargetLevel) {
//   //           currentLevel--;
//   //           levelChangedDown = true; // Set levelChangedDown to true when the level decreases
//   //         } else {
//   //           timer.cancel();
//   //         }
//   //       }
//   //
//   //       // Reset soundPlayed status when level goes below 4
//   //       if (currentLevel < 4) {
//   //         soundPlayed = List.generate(7, (index) => false); // Reset sound for all levels
//   //       }
//   //     });
//   //   });
//   // }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//
//                     // Prevent sound from playing at Level 0 or when the LED is off
//                     // if (currentLevel > reversedIndex) { // Ensure LED is on for the corresponding level
//                       if (switchStates1[reversedIndex] && !soundPlayed[reversedIndex] && !levelChangedDown) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true; // Mark the sound as played
//
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
// import '../utils/audio_player.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 isSwitchOn: switchStates1[reversedIndex], // Pass the state of "On Notify" switch
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 // onSwitch1Changed: (value) {
//                 //   setState(() {
//                 //     switchStates1[reversedIndex] = value;
//                 //
//                 //     // Prevent sound from playing at Level 0 or when the LED is off
//                 //     if (switchStates1[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && currentLevel >= reversedIndex) {
//                 //       // If switch is on and the level has already passed, don't play sound again
//                 //       if (currentLevel > reversedIndex) {
//                 //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                 //         soundPlayed[reversedIndex] = true; // Mark the sound as played
//                 //         hasSoundPlayedBefore[reversedIndex] = true; // Ensure sound plays only once per level
//                 //       }
//                 //     }
//                 //   });
//                 // },
//                   onSwitch1Changed: (value) {
//                     setState(() {
//                       switchStates1[reversedIndex] = value;
//                       // Sound tabhi baje agar switch pehle se ON tha aur current level match kar raha ho
//                       if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !hasSoundPlayedBefore[reversedIndex]) {
//                         if (currentLevel == reversedIndex) {
//                           _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                           soundPlayed[reversedIndex] = true;
//                           hasSoundPlayedBefore[reversedIndex] = true;
//                         }
//                       }
//                     });
//                   },
//
//                   onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
// import '../utils/audio_player.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }

// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 isSwitchOn: switchStates1[reversedIndex], // Pass the state of "On Notify" switch
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     // Sound tabhi baje agar switch pehle se ON tha aur current level match kar raha ho
//                     if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !hasSoundPlayedBefore[reversedIndex]) {
//                       if (currentLevel == reversedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true;
//                         hasSoundPlayedBefore[reversedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // Define soundPlayed list
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // Flag to check if sound has been played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 isSwitchOn: switchStates1[reversedIndex], // Pass the state of "On Notify" switch
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     setState(() {
//                       soundPlayed[reversedIndex] = true; // Mark sound as played
//                       hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                     });
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     // Sound tabhi baje agar switch pehle se ON tha aur current level match kar raha ho
//                     if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !hasSoundPlayedBefore[reversedIndex]) {
//                       if (currentLevel == reversedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true;
//                         hasSoundPlayedBefore[reversedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'dart:async';
//                                 child: Column(
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
// import '../utils/audio_player.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // Define soundPlayed list
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // Flag to check if sound has been played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 isSwitchOn: switchStates1[reversedIndex], // Pass the state of "On Notify" switch
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     setState(() {
//                       soundPlayed[reversedIndex] = true; // Mark sound as played
//                       hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                     });
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     // Sound tabhi baje agar switch pehle se ON tha aur current level match kar raha ho
//                     if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !hasSoundPlayedBefore[reversedIndex]) {
//                       if (currentLevel == reversedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true;
//                         hasSoundPlayedBefore[reversedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../widgets/water_level_dropdown.dart';
// import '../widgets/water_level_indicator.dart';
// import '../widgets/switch_widget.dart';
// import '../utils/audio_player.dart';
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }  class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // Define soundPlayed list
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // Flag to check if sound has been played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 isSwitchOn: switchStates1[reversedIndex], // Pass the state of "On Notify" switch
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     setState(() {
//                       soundPlayed[reversedIndex] = true; // Mark sound as played
//                       hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                     });
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//                     // Sound tabhi baje agar switch pehle se ON tha aur current level match kar raha ho
//                     if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !hasSoundPlayedBefore[reversedIndex]) {
//                       if (currentLevel == reversedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true;
//                         hasSoundPlayedBefore[reversedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import '../widgets/water_level_dropdown.dart';
import '../widgets/water_level_indicator.dart';
import '../widgets/switch_widget.dart';
import '../utils/audio_player.dart';

// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//
//                     // Prevent sound from playing at Level 0 or when the LED is off
//                     // if (switchStates1[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && currentLevel >= reversedIndex) {
//                     //   // If switch is on and the level has already passed, don't play sound again
//                     //   if (currentLevel > reversedIndex) {
//                     //     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     //     soundPlayed[reversedIndex] = true; // Mark the sound as played
//                     //     hasSoundPlayedBefore[reversedIndex] = true; // Ensure sound plays only once per level
//                     //   }
//                     // if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     //   // Play the beep sound when the corresponding level is reached and "On Notify" switch is on
//                     //   _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     //   soundPlayed[reversedIndex] = true; // Mark sound as played
//                     //   hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                     // if (switchStates1[reversedIndex] && currentLevel >= reversedIndex && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     //   // Check if toggle is on and water level has reached or exceeded the threshold
//                     //   if (currentLevel >= reversedIndex) {
//                     //     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     //     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     //     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                     //   }
//
//                     if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
//                       // Sound will only play if the switch is on and the LED is glowing
//                       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                       soundPlayed[reversedIndex] = true; // Mark sound as played
//                       hasSoundPlayedBefore[reversedIndex] = true; // Prevent sound from playing again
//                     }
//
//
//
//
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//30%
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//
//                     // Ensure sound does not play more than once when switchState1 changes
//                     if (switchStates1[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
//                       // Sound will play only when the LED reaches the specific level
//                       if (currentLevel >= reversedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true;
//                         hasSoundPlayedBefore[reversedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// 15% level 0

class WaterLevelScreen extends StatefulWidget {
  @override
  _WaterLevelScreenState createState() => _WaterLevelScreenState();
}

//previous

// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
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
//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int reversedIndex = 6 - rowIndex; // Reverse index for correct order
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: reversedIndex,
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   // If the LED for a level glows, check if the "On Notify" switch is on
//                   if (switchStates1[reversedIndex] && isOn && !soundPlayed[reversedIndex] && !hasSoundPlayedBefore[reversedIndex] && !levelChangedDown) {
//                     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[reversedIndex] = true; // Mark sound as played
//                     hasSoundPlayedBefore[reversedIndex] = true; // Mark that the sound has been played before
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               // SwitchWidget(
//               //   switchState1: switchStates1[reversedIndex],
//               //   switchState2: switchStates2[reversedIndex],
//               //   onSwitch1Changed: (value) {
//               //     setState(() {
//               //       switchStates1[reversedIndex] = value;
//               //
//               //       // Ensure sound does not play more than once when switchState1 changes
//               //       if (switchStates1[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
//               //         // Sound will play only when the LED reaches the specific level
//               //         if (currentLevel >= reversedIndex) {
//               //           _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//               //           soundPlayed[reversedIndex] = true;
//               //           hasSoundPlayedBefore[reversedIndex] = true;
//               //         }
//               //       }
//               //     });
//               //   },
//               //   onSwitch2Changed: (value) {
//               //     setState(() {
//               //       switchStates2[reversedIndex] = value;
//               //     });
//               //   },
//               // ),
//               SwitchWidget(
//                 switchState1: switchStates1[reversedIndex],
//                 switchState2: switchStates2[reversedIndex],
//                 // onSwitch1Changed: (value) {
//                 //   setState(() {
//                 //     switchStates1[reversedIndex] = value;
//                 //
//                 //     // Check if "On Notify" switch is ON and currentLevel is greater than or equal to the corresponding level
//                 //     if (switchStates1[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
//                 //       // Check that the level has reached the required level before playing sound
//                 //       if (currentLevel >= (reversedIndex * 15)) {
//                 //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                 //         soundPlayed[reversedIndex] = true;
//                 //         hasSoundPlayedBefore[reversedIndex] = true;
//                 //       }
//                 //     }
//                 //   });
//                 // },
//                 //only once
//                 // onSwitch1Changed: (value) {
//                 //   setState(() {
//                 //     switchStates1[reversedIndex] = value;
//                 //
//                 //     // Check "On Notify" condition only when water level is high enough
//                 //     if (switchStates1[reversedIndex] && currentLevel == (reversedIndex + 1)) {
//                 //       // Play sound if not already played
//                 //       if (!hasSoundPlayedBefore[reversedIndex]) {
//                 //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                 //         soundPlayed[reversedIndex] = true;
//                 //         hasSoundPlayedBefore[reversedIndex] = true;
//                 //       }
//                 //     }
//                 //   });
//                 // },
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[reversedIndex] = value;
//
//                     // Check toggle switch and water level condition
//                     if (switchStates1[reversedIndex]) {
//                       if (currentLevel == (reversedIndex + 1) && !soundPlayed[reversedIndex]) {
//                         // Play sound if current level matches and toggle is ON
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[reversedIndex] = true; // Mark sound as played
//                       }
//                       else if (currentLevel != (reversedIndex + 1)) {
//                         // Reset sound flag if level changes
//                         soundPlayed[reversedIndex] = false;
//                       }
//                     }
//                   });
//                 },
//
//
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[reversedIndex] = value;
//                   });
//                 },
//               )
//
//             ],
//           ),
//         ),
//       );
//     }
//
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//   // Widget buildRow(int rowIndex) {
//   //   if (rowIndex < 6) { // Only 6 levels (1-6), excluding 0
//   //     int levelIndex = rowIndex + 1; // Start at 1 for 15%, 2 for 30%, etc.
//   //
//   //     return Padding(
//   //       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//   //       child: IntrinsicHeight(
//   //         child: Row(
//   //           mainAxisAlignment: MainAxisAlignment.center,
//   //           crossAxisAlignment: CrossAxisAlignment.center,
//   //           children: [
//   //             WaterLevelIndicator(
//   //               index: levelIndex, // Adjust index to skip 0 and start from 1
//   //               currentLevel: currentLevel,
//   //               onLEDGlow: (bool isOn) {
//   //                 if (switchStates1[levelIndex - 1] && isOn && !soundPlayed[levelIndex - 1] && !hasSoundPlayedBefore[levelIndex - 1] && !levelChangedDown) {
//   //                   _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//   //                   soundPlayed[levelIndex - 1] = true;
//   //                   hasSoundPlayedBefore[levelIndex - 1] = true;
//   //                 }
//   //               },
//   //             ),
//   //             SizedBox(width: 20), // Spacing between LED and switches
//   //             SwitchWidget(
//   //               switchState1: switchStates1[levelIndex - 1],
//   //               switchState2: switchStates2[levelIndex - 1],
//   //               onSwitch1Changed: (value) {
//   //                 setState(() {
//   //                   switchStates1[levelIndex - 1] = value;
//   //                   if (switchStates1[levelIndex - 1] && !hasSoundPlayedBefore[levelIndex - 1]) {
//   //                     if (currentLevel >= levelIndex) {
//   //                       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//   //                       soundPlayed[levelIndex - 1] = true;
//   //                       hasSoundPlayedBefore[levelIndex - 1] = true;
//   //                     }
//   //                   }
//   //                 });
//   //               },
//   //               onSwitch2Changed: (value) {
//   //                 setState(() {
//   //                   switchStates2[levelIndex - 1] = value;
//   //                 });
//   //               },
//   //             ),
//   //           ],
//   //         ),
//   //       ),
//   //     );
//   //   }
//   //   return Container(); // Return an empty container for level 0
//   // }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(8, (index) {
//                       if (index < 7) {
//                         return buildRow(index);
//                       } else {
//                         return Padding(
//                           padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.end,
//                                   children: [
//                                     Text('Water Level'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text('        On Notify'),
//                                   ],
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: [
//                                     Text('   Off Notify'),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         );
//                       }
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _WaterLevelScreenState extends State<WaterLevelScreen> {
  final double ledSize = 30.0;
  final double spacing = 20.0;
  final double rowSpacing = 15.0;
  List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
  List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
  int previousLevel = 0; // Yeh variable aapke level ko track karega
  bool initialSwitchState = false; // Declare this here at the class level
//  bool levelSelected = false; // Initially false, level select karte waqt true ho jayega.

  int currentLevel = 0;
  Timer? timer;
  bool isIncreasing = true;
  int targetLevel = 0;

  final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
  String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
  List<bool> soundPlayed =
      List.generate(7, (index) => false); // To track sound play status
  bool levelChangedDown = false; // To track if the level has decreased
  List<bool> hasSoundPlayedBefore = List.generate(
      7, (index) => false); // New flag to check if sound has played before
  bool wasLevelIncreased = false; // Flag to check if level has increased

  @override
  void initState() {
    super.initState();
    startAnimation(currentLevel);
  }

  void startAnimation(int newTargetLevel) {
    if (newTargetLevel == currentLevel) return;

    isIncreasing = newTargetLevel > currentLevel;
    timer?.cancel();
    timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      setState(() {
        if (isIncreasing) {
          if (currentLevel < newTargetLevel) {
            currentLevel++;
            levelChangedDown = false; // Reset when level increases
            wasLevelIncreased = true; // Track that level has increased
          } else {
            timer.cancel();
          }
        } else {
          if (currentLevel > newTargetLevel) {
            currentLevel--;
            levelChangedDown = true; // Set when level decreases
            wasLevelIncreased = false; // Track that level has decreased
          } else {
            timer.cancel();
          }
        }

        // Reset soundPlayed for all levels below the current level
        for (int i = currentLevel; i < 7; i++) {
          soundPlayed[i] = false;
        }
      });
    });
  }

  Color getLEDColor(int index) {
    if (index >= 6) {
      return Colors.blue;
    } else if (index >= 3) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  Widget buildRow(int rowIndex) {
    if (rowIndex < 7) {
      int reversedIndex = 6 - rowIndex; // Reverse index for correct order
      return Padding(
        padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //previous
              // WaterLevelIndicator(
              //   index: reversedIndex,
              //   currentLevel: currentLevel,
              //   onLEDGlow: (bool isOn) {
              //     // If the LED for a level glows, check if the "On Notify" switch is on
              //     if (switchStates1[reversedIndex] &&
              //         isOn &&
              //         !soundPlayed[reversedIndex] &&
              //         !hasSoundPlayedBefore[reversedIndex] &&
              //         !levelChangedDown) {
              //       // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
              //       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //       soundPlayed[reversedIndex] = true; // Mark sound as played
              //       hasSoundPlayedBefore[reversedIndex] =
              //           true; // Mark that the sound has been played before
              //     }
              //
              //     // If the level is increased, check to play sound even after level change
              //     if (wasLevelIncreased &&
              //         switchStates1[reversedIndex] &&
              //         isOn &&
              //         !soundPlayed[reversedIndex]) {
              //       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //       soundPlayed[reversedIndex] = true; // Mark sound as played
              //       hasSoundPlayedBefore[reversedIndex] =
              //           true; // Mark that the sound has been played before
              //     }
              //   },
              // ),

              //recent  // switch 2 on for increasing up level // 3:19 pm 1/27/2025
              // WaterLevelIndicator(
              //     index: reversedIndex,
              //     currentLevel: currentLevel,
              //     onLEDGlow: (bool isOn) {
              // "On Notify" Logic // recent
              // if (switchStates1[reversedIndex] &&
              //     isOn &&
              //     !soundPlayed[reversedIndex] &&
              //     !hasSoundPlayedBefore[reversedIndex] &&
              //     !levelChangedDown) {
              //   // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
              //   _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //   soundPlayed[reversedIndex] = true; // Mark sound as played
              //   hasSoundPlayedBefore[reversedIndex] =
              //   true; // Mark that the sound has been played before
              // }
              // // Handle sound when the level is increased dynamically
              // if (wasLevelIncreased &&
              //     switchStates1[reversedIndex] &&
              //     isOn &&
              //     !soundPlayed[reversedIndex]) {
              //   _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //   soundPlayed[reversedIndex] = true; // Mark sound as played
              //   hasSoundPlayedBefore[reversedIndex] =
              //   true; // Mark that the sound has been played before
              // }
              // "Off Notify" Logic
              //   if (switchStates2[reversedIndex] &&
              //       !isOn &&
              //       !soundPlayed[reversedIndex] &&
              //       hasSoundPlayedBefore[reversedIndex] &&
              //       levelChangedDown) {
              //     // Play the beep sound when the corresponding LED turns off and "Off Notify" switch is on
              //     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //     soundPlayed[reversedIndex] = true; // Mark sound as played
              //   }
              //
              //   // Reset sound flags when LED state changes
              //   if (isOn) {
              //     soundPlayed[reversedIndex] = false; // Allow sound to play again
              //   }
              // },
              //switch 2 for on notify
              //   if (switchStates2[reversedIndex] //Agar On Notify switch
              //   // ON hai (iska mtlb hai user ne notify karne ke liye
              //   // switch ON kar rakha hai).
              //       &&
              //       isOn //Agar LED glow ho raha hai (iska mtlb hai
              //       // current level match kar raha hai aur uska indicator
              //       // light glow kar raha hai).
              //       &&
              //       !soundPlayed[reversedIndex]//Agar us particular level
              //       // ke liye sound abhi tak nahi baj chuka.
              //       &&
              //       !hasSoundPlayedBefore[reversedIndex] //Agar sound pehle
              //       // kabhi bhi nahi baj chuka us level ke liye
              //       // (yeh ensure karta hai ke har level ka sound ek baar
              //       // bajega).
              //       &&
              //       !levelChangedDown) //Agar level decrease nahi ho raha
              //     // (yeh ensure karta hai ke sirf level increase hone par
              //     // hi sound bajegi).
              //   {
              //     // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
              //     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //     soundPlayed[reversedIndex] = true; // soundPlayed flag ko
              //     // true set kar diya jata hai.//Yeh ensure karta hai ke
              //     // dobara sound nahi bajegi jab tak koi significant event
              //     // (e.g., level change) na ho.
              //     //Mark sound as played
              //     hasSoundPlayedBefore[reversedIndex] =
              //         true; //hasSoundPlayedBefore flag true kar diya jata hai.
              //     //Iska matlab hai ke sound is level ke liye pehle baj
              //     //chuka hai.
              //     //Iska purpose hai future notifications ko track karna aur
              //     // avoid karna ke unnecessary sounds bajti rahen.
              //     // Mark that the sound has been played before
              //   }
              //   // Handle sound when the level is increased dynamically
              //   //Agar level dynamically increase hota hai (wasLevelIncreased == true),
              //   // aur "On Notify" on hai (switchStates2[reversedIndex] == true),
              //   // aur sound pehle nahi baj chuka (!soundPlayed[reversedIndex]),
              //   // toh sound play karega.
              //   if (wasLevelIncreased &&
              //       switchStates2[reversedIndex] &&
              //       isOn &&
              //       !soundPlayed[reversedIndex]) {
              //     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //     soundPlayed[reversedIndex] = true; // Mark sound as played
              //     hasSoundPlayedBefore[reversedIndex] =
              //         true; // Mark that the sound has been played before
              //     // Sound ke baad flags update karega (soundPlayed aur
              //     // hasSoundPlayedBefore).
              // }
              // //   Result: Sound zaroor play karega jab level increase
              //   //   hoga aur matching level par "On Notify" on hai.
              // }),

              //switch 2 decreasing level off notify 1.0
              // WaterLevelIndicator(
              //     index: reversedIndex, // reversedIndex ko use karte hue current water level indicator ke liye correct index set kiya jata hai
              //     currentLevel: currentLevel, // currentLevel ko pass karte hue, jo bhi water level abhi hai, wo WaterLevelIndicator ko diya jata hai
              //     onLEDGlow: (bool isOn) { // isOn parameter ko function ke andar diya jata hai, jo bool type ka hai aur yeh batata hai ki LED glow kar raha hai ya nahi
              //       if (switchStates2[reversedIndex] // Agar "On Notify" switch ON hai (is ka matlab hai user ne notify ke liye switch ON kiya hai)
              //           &&
              //           isOn // Agar LED glow ho raha hai (is ka matlab hai current water level match kar raha hai aur LED indicator glow kar raha hai)
              //           &&
              //           !soundPlayed[reversedIndex] // Agar is particular level ke liye sound abhi tak nahi baj chuka
              //           &&
              //           !hasSoundPlayedBefore[reversedIndex] // Agar sound pehle kabhi nahi baj chuka us level ke liye (yeh ensure karta hai ke har level ka sound ek baar bajega)
              //           &&
              //           !levelChangedDown) // Agar level decrease nahi ho raha (yeh ensure karta hai ke sirf level increase hone par hi sound bajegi)
              //           {
              //         // Jab upar wali sab conditions true ho jati hain, tab beep sound play hota hai
              //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //         soundPlayed[reversedIndex] = true; // soundPlayed flag ko true set kar diya jata hai. Yeh ensure karta hai ke dobara sound nahi bajegi jab tak koi significant event (jaise level ka change) na ho.
              //         hasSoundPlayedBefore[reversedIndex] = true; // hasSoundPlayedBefore flag ko true set kar diya jata hai. Iska matlab hai ke sound is level ke liye pehle baj chuka hai.
              //         // Iska purpose hai future mein unnecessary sounds ko avoid karna.
              //       }
              //
              //       // Agar level dynamically increase ho raha ho
              //       // (wasLevelIncreased == true), aur "On Notify" switch ON
              //       // hai (switchStates2[reversedIndex] == true), aur sound
              //       // abhi tak nahi baj chuka hai (!soundPlayed[reversedIndex]),
              //       // to beep sound play karna hai
              //       if (wasLevelIncreased &&
              //           switchStates2[reversedIndex] &&
              //           isOn &&
              //           !soundPlayed[reversedIndex]) {
              //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //         soundPlayed[reversedIndex] = true; // soundPlayed flag ko true set kar diya jata hai. Yeh mark karta hai ke sound play ho chuki hai.
              //         hasSoundPlayedBefore[reversedIndex] = true; // hasSoundPlayedBefore flag ko true set kar diya jata hai. Iska matlab hai ke sound is level ke liye pehle baj chuka hai.
              //       }
              //       // Result: Sound zaroor play karega jab level increase hoga aur matching level par "On Notify" ON hoga
              //     }
              // ),

              //switch 2 decreasing level off notify 2.0 (working)
//waterlevel only for switch 2 , next is to make for switch 1 as well...7:35pm 1/28/2025
//               WaterLevelIndicator(
//                   index: reversedIndex,
//                   // `reversedIndex` current water level ke liye index ko represent karta hai
//                   currentLevel: currentLevel,
//                   // `currentLevel` current water level pass karta hai jo is waqt tank ke andar hai
//
//                   onLEDGlow: (bool isOn) {
//                     // Jab LED glow karega (on ya off status isOn variable ke zarye batata hai)
//
//
//                     if (switchStates2[reversedIndex] // Agar "On Notify" switch ON hai
//                         &&
//                         !isOn // Agar LED /off//glow ho raha hai (matlab current level match kar raha hai)
//                         &&
//                         !soundPlayed[reversedIndex] // Agar sound abhi tak baj chuki nahi hai is level ke liye
//                         &&
//                         !hasSoundPlayedBefore[reversedIndex] // Agar sound pehle kabhi nahi baj chuki
//                         &&
//                         levelChangedDown) // Aur agar level decrease //nahi// ho raha (sirf level badhne par notification bajni chahiye)
//                         {
//                       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                       // Beep sound bajayi ja rahi hai user ko notify karne ke liye ke pani ka level is waqt match kar raha hai
//
//                       soundPlayed[reversedIndex] = true;
//                       // Is flag ko true set kiya gaya taake dobara unnecessarily sound na baje
//
//                       hasSoundPlayedBefore[reversedIndex] = true;
//                       // Iska matlab hai ke iss particular level ke liye sound ab baj chuka hai aur yeh future mein unnecessary sounds ko rokta hai
//                     }
//
//                     if (!wasLevelIncreased
//                         // Agar pani ka level //kam//badh raha hai
//                         &&
//                         switchStates2[reversedIndex]
//                         // Aur "On Notify" switch ON hai
//                         &&
//                         !isOn
//                         // Aur LED //off//glow kar raha hai
//                         &&
//                         !soundPlayed[reversedIndex]) {
//                       // Aur is level ke liye abhi tak sound baj chuki nahi hai
//
//                       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                       // Notify karte hue sound play karna
//
//                       soundPlayed[reversedIndex] = true;
//                       // Flag ko true karna ke sound baj chuki hai aur repeat nahi hogi unnecessarily
//
//                       hasSoundPlayedBefore[reversedIndex] = true;
//                       // Yeh mark karta hai ke sound is level ke liye pehle hi baj chuki hai
//                     }
//                   }
//               ),

//merging switch 1 on notify and switch 2 off notify 7:38pm 1/28/2025 (working)
              WaterLevelIndicator(
                  index: reversedIndex,
                  // `reversedIndex` current water level ke liye index ko represent karta hai
                  currentLevel: currentLevel,
                  // `currentLevel` current water level pass karta hai jo is waqt tank ke andar hai

                  onLEDGlow: (bool isOn) {
                    // Jab LED glow karega (on ya off status isOn variable ke zarye batata hai)
                    //switch 1
                    if (switchStates1[
                            reversedIndex] // Agar "On Notify" switch ON hai
                        &&
                        isOn // Agar LED /off//glow ho raha hai (matlab current level match kar raha hai)
                        &&
                        !soundPlayed[
                            reversedIndex] // Agar sound abhi tak baj chuki nahi hai is level ke liye
                        &&
                        !hasSoundPlayedBefore[
                            reversedIndex] // Agar sound pehle kabhi nahi baj chuki
                        &&
                        !levelChangedDown) // Aur agar level decrease //nahi// ho raha (sirf level badhne par notification bajni chahiye)
                    {
                      _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                      // Beep sound bajayi ja rahi hai user ko notify karne ke liye ke pani ka level is waqt match kar raha hai

                      soundPlayed[reversedIndex] = true;
                      // Is flag ko true set kiya gaya taake dobara unnecessarily sound na baje

                      hasSoundPlayedBefore[reversedIndex] = true;
                      // Iska matlab hai ke iss particular level ke liye sound ab baj chuka hai aur yeh future mein unnecessary sounds ko rokta hai
                    }

                    if (wasLevelIncreased
                        // Agar pani ka level //kam//badh raha hai
                        &&
                        switchStates1[reversedIndex]
                        // Aur "On Notify" switch ON hai
                        &&
                        isOn
                        // Aur LED //off//glow kar raha hai
                        &&
                        !soundPlayed[reversedIndex]) {
                      // Aur is level ke liye abhi tak sound baj chuki nahi hai

                      _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                      // Notify karte hue sound play karna

                      soundPlayed[reversedIndex] = true;
                      // Flag ko true karna ke sound baj chuki hai aur repeat nahi hogi unnecessarily

                      hasSoundPlayedBefore[reversedIndex] = true;
                      // Yeh mark karta hai ke sound is level ke liye pehle hi baj chuki hai
                    }

//switch 2
                    if (switchStates2[
                            reversedIndex] // Agar "On Notify" switch ON hai
                        &&
                        !isOn // Agar LED /off//glow ho raha hai (matlab current level match kar raha hai)
                        &&
                        !soundPlayed[
                            reversedIndex] // Agar sound abhi tak baj chuki nahi hai is level ke liye
                        &&
                        !hasSoundPlayedBefore[
                            reversedIndex] // Agar sound pehle kabhi nahi baj chuki
                        &&
                        levelChangedDown) // Aur agar level decrease //nahi// ho raha (sirf level badhne par notification bajni chahiye)
                    {
                      _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                      // Beep sound bajayi ja rahi hai user ko notify karne ke liye ke pani ka level is waqt match kar raha hai

                      soundPlayed[reversedIndex] = true;
                      // Is flag ko true set kiya gaya taake dobara unnecessarily sound na baje

                      hasSoundPlayedBefore[reversedIndex] = true;
                      // Iska matlab hai ke iss particular level ke liye sound ab baj chuka hai aur yeh future mein unnecessary sounds ko rokta hai
                    }

                    if (!wasLevelIncreased
                        // Agar pani ka level //kam//badh raha hai
                        &&
                        switchStates2[reversedIndex]
                        // Aur "On Notify" switch ON hai
                        &&
                        !isOn
                        // Aur LED //off//glow kar raha hai
                        &&
                        !soundPlayed[reversedIndex]) {
                      // Aur is level ke liye abhi tak sound baj chuki nahi hai

                      _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                      // Notify karte hue sound play karna

                      soundPlayed[reversedIndex] = true;
                      // Flag ko true karna ke sound baj chuki hai aur repeat nahi hogi unnecessarily

                      hasSoundPlayedBefore[reversedIndex] = true;
                      // Yeh mark karta hai ke sound is level ke liye pehle hi baj chuki hai
                    }
                  }),

              SizedBox(width: 20),
              //previous
              // SwitchWidget(
              //     switchState1: switchStates1[reversedIndex],
              //     switchState2: switchStates2[reversedIndex],
              //     onSwitch1Changed: (value) {
              //       setState(() {
              //         switchStates1[reversedIndex] = value;
              //         // Check toggle switch and water level condition
              //         if (switchStates1[reversedIndex]) {
              //           if (currentLevel == (reversedIndex + 1) &&
              //               !soundPlayed[reversedIndex]) {
              //             // Play sound if current level matches and toggle is ON
              //             _audioPlayerManager
              //                 .playBeepSound(_selectedBeepSound!);
              //             soundPlayed[reversedIndex] =
              //                 true; // Mark sound as played
              //           } else if (currentLevel != (reversedIndex + 1)) {
              //             // Reset sound flag if level changes
              //             soundPlayed[reversedIndex] = false;
              //           }
              //         }
              //       });
              //     },
              //   onSwitch2Changed: (value) {
              //     setState(() {
              //       switchStates2[reversedIndex] = value;
              //       // Check toggle switch and water level condition
              //       if (switchStates2[reversedIndex]) {
              //         if (currentLevel == (reversedIndex + 1) &&
              //             !soundPlayed[reversedIndex]) {
              //           // Play sound if current level matches and toggle is ON
              //           _audioPlayerManager
              //               .playBeepSound(_selectedBeepSound!);
              //           soundPlayed[reversedIndex] =
              //           true; // Mark sound as played
              //         } else if (currentLevel != (reversedIndex + 1)) {
              //           // Reset sound flag if level changes
              //           soundPlayed[reversedIndex] = false;
              //         }
              //       }
              //     });
              //   },

              //only functi   levelm pe pohancne k bad toggle ho
              // onSwitch2Changed: (value) {
              //   setState(() {
              //     switchStates2[reversedIndex] = value;
              //
              //     // Check toggle switch and water level condition
              //     if (switchStates2[reversedIndex]) {
              //       // Check if transitioning from higher level to lower level
              //       if (previousLevel > currentLevel && !soundPlayed[reversedIndex]) {
              //         // Play sound if switch is ON and transition is downward
              //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
              //         soundPlayed[reversedIndex] = true; // Mark sound as played
              //       }
              //     } else {
              //       // Reset sound flag when switch is OFF
              //       soundPlayed[reversedIndex] = false;
              //     }
              //
              //     // Update previous level
              //     previousLevel = currentLevel;
              //     print("Previous Level: $previousLevel, Current Level: $currentLevel");
              //   });
              // },
              //
              // Declare a variable to hold the state of the switch before the transition starts
              // bool initialSwitchState = false;
//               bool soundPlayed = false; // To track if the sound has been played for this transition
//               bool transitionInProgress = false; // To track if the transition is ongoing
//
// // onSwitch2Changed callback
//                   void onSwitch2Changed(bool value) {
//         setState(() {
//         // Save the switch state when it is turned on or off
//         switchStates2[reversedIndex] = value;
//
//         // If the switch is turned on, we save the current state for transition check
//         if (value) {
//         initialSwitchState = true;
//         }
//
//         // We play the sound **only** after the level reaches the target level
//         if (switchStates2[reversedIndex] && !soundPlayed) {
//         if (currentLevel == targetLevel && initialSwitchState) {
//         // Play sound when the level reaches the target and switch was ON
//         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//         soundPlayed = true; // Mark sound as played
//         }
//         }
//
//         // Reset the sound flag if the switch is turned OFF
//         if (!switchStates2[reversedIndex]) {
//         soundPlayed = false;
//         initialSwitchState = false; // Reset initial switch state when switch is turned OFF
//         }
//
//         // Update previous level
//         previousLevel = currentLevel;
//         print("Previous Level: $previousLevel, Current Level: $currentLevel, Switch State: ${switchStates2[reversedIndex]}");
//         });
//         }

              // ),
              // recent
              SwitchWidget(
                switchState1: switchStates1[reversedIndex],
                switchState2: switchStates2[reversedIndex],
                //previous
                // onSwitch1Changed: (value) {
                //   setState(() {
                //     switchStates1[reversedIndex] = value;
                //
                //     // Check "On Notify" logic for switch 1
                //     if (switchStates1[reversedIndex]) {
                //       if (currentLevel == (reversedIndex + 1) && !soundPlayed[reversedIndex]) {
                //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                //         soundPlayed[reversedIndex] = true; // Mark sound as played
                //       } else if (currentLevel != (reversedIndex + 1)) {
                //         soundPlayed[reversedIndex] = false; // Reset sound flag if level changes
                //       }
                //     }
                //
                //     // Additional handling for "Off Notify" logic
                //     if (!switchStates1[reversedIndex] && hasSoundPlayedBefore[reversedIndex]) {
                //       soundPlayed[reversedIndex] = false; // Reset sound flag when switched off
                //     }
                //   });
                // },
                //
                //   onSwitch1Changed: (value) {
                //     setState(() {
                //       switchStates1[reversedIndex] = value;
                //
                //       // Check "On Notify" logic for switch 1
                //       if (switchStates1[reversedIndex]) {
                //         // Sound play only when the current level matches and sound has not been played yet
                //         if (currentLevel == (reversedIndex + 1) && !soundPlayed[reversedIndex]) {
                //           _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                //           soundPlayed[reversedIndex] = true; // Mark sound as played
                //         }
                //         // Reset sound flag if level changes
                //         else if (currentLevel != (reversedIndex + 1)) {
                //           soundPlayed[reversedIndex] = false; // Allow sound to play again if level changes
                //         }
                //       }
                //
                //       // No need for "Off Notify" logic anymore, sound can always be played on switch change
                //     });
                //   },
                onSwitch1Changed: (value) {
                  setState(() {
                    switchStates1[reversedIndex] = value;
                    // Check "On Notify" logic for switch 1
                    //updated for switch 1 on notify 7:43pm 1/28/2025

                    if (switchStates1[reversedIndex]) {
                      // Sound play every time level matches and sound hasn't played before
                      if (currentLevel == (reversedIndex + 1)) {
                        _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                        soundPlayed[reversedIndex] =
                            true; // Mark sound as played
                      }
                    }
                    // Reset sound flag when the level changes (allows sound to play again when the level changes)
                    if (currentLevel != (reversedIndex + 1)) {
                      soundPlayed[reversedIndex] = false;
                    }
                  });
                },

                //
                // onSwitch2Changed: (value) {
                //   setState(() {
                //     switchStates2[reversedIndex] =
                //         value; // Switch ka state update ho raha hai
                //   });
                // }
//recent for switch 2 on notify logic// now for off notify 7:38pm 1/28/2025
                onSwitch2Changed: (value) {
                  // Jab doosra switch toggle karega (on/off), toh yeh function chalega.
                  setState(() {
                    // State ko update kar raha hai.
                    switchStates2[reversedIndex] =
                        value; // Current switch ke state ko on ya off mein update
                    // kar raha hai.
                    //Agar "On Notify" switch on hai aur level match karta hai,
                    // toh sound bajayega.
                    //Level increase ya decrease hone ka alag fark nahi karega.
                    if (switchStates2[reversedIndex]) {
                      // Sound play every time level matches and sound hasn't
                      // played before
                      if (currentLevel == (reversedIndex + 1)) {
                        _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                        soundPlayed[reversedIndex] =
                            true; // Mark sound as played
                        // Result: Sound tabhi bajayega jab level matching ho aur switch on ho,
                        // lekin level dynamically increase hone ka special handling nahi karega.
                      }
                    }
                    // Reset sound flag when the level changes (allows sound
                    // to play again when the level changes)
                    if (currentLevel != (reversedIndex + 1)) {
                      soundPlayed[reversedIndex] = false;
                    }
                  });
                },
                // Check kar raha hai "On Notify" ke liye
                //     if (switchStates2[reversedIndex]) { // Agar current switch on hai
                //       // Har bar jab level match kare aur sound pehle nahi baja tha
                //       if (currentLevel == (reversedIndex + 1)) { // Agar current level switch ke index ke barabar hai
                //         _audioPlayerManager.playBeepSound(_selectedBeepSound!); // Beep sound bajayega
                //         soundPlayed[reversedIndex] = true; // Sound baj chuka hai, isliye flag ko true set kar raha hai.
                //       }
                //     }
                //
                //     // Jab level change ho, sound flag reset kar raha hai
                //     if (currentLevel != (reversedIndex + 1)) { // Agar current level switch ke index ke barabar nahi hai
                //       soundPlayed[reversedIndex] = false; // Sound flag ko reset kar raha hai taake dobara sound baja sake.
                //     }
                //   });
                // },

                //
                //     // "Off Notify" logic for switch 2
                //     if (switchStates2[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
                //       // Sound tab play hoga jab level select kiya ho aur "Off Notify" switch ON ho
                //       if (currentLevel < (reversedIndex + 1)) { // Agar level neeche jaa raha ho
                //         // Sound play
                //         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                //         soundPlayed[reversedIndex] = true; // Sound ka flag set ho gaya
                //       }
                //     }
                //
                //     // Make sure sound doesn't play on app start or when no level is selected
                //     if (currentLevel == (reversedIndex + 1) && switchStates2[reversedIndex] && !soundPlayed[reversedIndex] && !levelSelected) {
                //       soundPlayed[reversedIndex] = false; // Sound flag ko reset karte hain
                //     }
                //   });
                // }
                //             bool initialLoad = true;  // Flag to track app start status
                //
                //             void startApp() {
                //   setState(() {
                //   initialLoad = true;  // App start ho rahi hai, initial load
                //   });
                //   }
                //
                //       onSwitch2Changed: (value) {
                // setState(() {
                // switchStates2[reversedIndex] = value; // Switch ka state update ho raha hai
                //
                // // Initial load ke time sound play nahi hona chahiye
                // if (initialLoad) {
                // return;  // Agar app start ho gayi ho to sound nahi play hoga
                // }
                //
                // // Sound play karne ka logic (level neeche jaa raha ho aur "Off Notify" ON ho)
                // if (switchStates2[reversedIndex] && !hasSoundPlayedBefore[reversedIndex]) {
                // if (currentLevel < (reversedIndex + 1) && levelSelected) { // Agar level neeche jaa raha ho aur level select ho
                // _audioPlayerManager.playBeepSound(_selectedBeepSound!);
                // soundPlayed[reversedIndex] = true; // Sound ko play hone ka flag set ho gaya
                // }
                // }
                //
                // // Sound play hone par reset karenge
                // if (currentLevel == (reversedIndex + 1) && switchStates2[reversedIndex] && !soundPlayed[reversedIndex] && !levelSelected) {
                // soundPlayed[reversedIndex] = false; // Sound flag ko reset karte hain
                // }
                // });
                // }
                //
                //     onLevelChanged(int newLevel) {
                //   setState(() {
                //     currentLevel = newLevel;
                //     levelSelected = true; // Level select karte hi flag ko true karenge
                //     initialLoad = false;  // App start hone ke baad yeh false ho jayega
                //   });
                // }
              )
            ],
          ),
        ),
      );
    }

    return Container(); // Return an empty container when rowIndex is 7 or higher
  }

  @override
  void dispose() {
    timer?.cancel();
    _audioPlayerManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Water Level Monitor'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: List.generate(8, (index) {
                      if (index < 7) {
                        return buildRow(index);
                      } else {
                        return Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: rowSpacing / 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text('Water Level'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text('        On Notify'),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Text('   Off Notify'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                    }),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: WaterLevelDropdown(
              targetLevel: targetLevel,
              onLevelChanged: (newLevel) {
                setState(() {
                  targetLevel = newLevel ?? 0;
                  startAnimation(targetLevel);
                  levelChangedDown =
                      false; // Reset the levelChangedDown flag on level change
                  wasLevelIncreased =
                      false; // Reset when level is manually changed
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

//15% level 1,, level 0 as a refernce
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0;
//   final double spacing = 20.0;
//   final double rowSpacing = 15.0;
//   List<bool> switchStates1 = List.generate(7, (index) => false); // "On Notify"
//   List<bool> switchStates2 = List.generate(7, (index) => false); // "Off Notify"
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayerManager _audioPlayerManager = AudioPlayerManager();
//   String? _selectedBeepSound = 'notification_1.mp3'; // Default beep sound
//   List<bool> soundPlayed = List.generate(7, (index) => false); // To track sound play status
//   bool levelChangedDown = false; // To track if the level has decreased
//   List<bool> hasSoundPlayedBefore = List.generate(7, (index) => false); // New flag to check if sound has played before
//
//   @override
//   void initState() {
//     super.initState();
//     startAnimation(currentLevel);
//   }
//
//   void startAnimation(int newTargetLevel) {
//     if (newTargetLevel == currentLevel) return;
//
//     isIncreasing = newTargetLevel > currentLevel;
//     timer?.cancel();
//     timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
//       setState(() {
//         if (isIncreasing) {
//           if (currentLevel < newTargetLevel) {
//             currentLevel++;
//             levelChangedDown = false; // Reset when level increases
//           } else {
//             timer.cancel();
//           }
//         } else {
//           if (currentLevel > newTargetLevel) {
//             currentLevel--;
//             levelChangedDown = true; // Set when level decreases
//           } else {
//             timer.cancel();
//           }
//
//         }
//
//         // Reset soundPlayed for all levels below the current level
//         for (int i = currentLevel; i < 7; i++) {
//           soundPlayed[i] = false;
//         }
//       });
//     });
//   }
//
//   Color getLEDColor(int index) {
//     if (index == 6) {
//       return Colors.blue;
//     } else if (index >= 4) {
//       return Colors.green;
//     } else {
//       return Colors.red;
//     }
//   }

// Widget buildRow(int rowIndex) {
//   if (rowIndex < 7) {
//     int adjustedIndex = rowIndex; // Direct index without reversing
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//       child: IntrinsicHeight(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             WaterLevelIndicator(
//               index: adjustedIndex, // Adjusted index now correctly matches
//               currentLevel: currentLevel,
//               onLEDGlow: (bool isOn) {
//                 // If the LED for a level glows, check if the "On Notify" switch is on
//                 if (switchStates1[adjustedIndex] && isOn && !soundPlayed[adjustedIndex] && !hasSoundPlayedBefore[adjustedIndex] && !levelChangedDown) {
//                   // Play the beep sound when the corresponding LED glows and "On Notify" switch is on
//                   _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                   soundPlayed[adjustedIndex] = true; // Mark sound as played
//                   hasSoundPlayedBefore[adjustedIndex] = true; // Mark that the sound has been played before
//                 }
//               },
//             ),
//             SizedBox(width: 20), // Spacing between LED and switches
//             SwitchWidget(
//               switchState1: switchStates1[adjustedIndex],
//               switchState2: switchStates2[adjustedIndex],
//               onSwitch1Changed: (value) {
//                 setState(() {
//                   switchStates1[adjustedIndex] = value;
//
//                   // Ensure sound does not play more than once when switchState1 changes
//                   if (switchStates1[adjustedIndex] && !hasSoundPlayedBefore[adjustedIndex]) {
//                     // Sound will play only when the LED reaches the specific level
//                     if (currentLevel >= adjustedIndex) {
//                       _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                       soundPlayed[adjustedIndex] = true;
//                       hasSoundPlayedBefore[adjustedIndex] = true;
//                     }
//                   }
//                 });
//               },
//               onSwitch2Changed: (value) {
//                 setState(() {
//                   switchStates2[adjustedIndex] = value;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   return Container(); // Return an empty container when rowIndex is 7 or higher
// }

//   Widget buildRow(int rowIndex) {
//     if (rowIndex < 7) {
//       int adjustedIndex = 6 - rowIndex; // Reverse the index to display 15% at the bottom
//       return Padding(
//         padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//         child: IntrinsicHeight(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               WaterLevelIndicator(
//                 index: adjustedIndex, // Adjusted index for reversed order
//                 currentLevel: currentLevel,
//                 onLEDGlow: (bool isOn) {
//                   if (switchStates1[adjustedIndex] && isOn && !soundPlayed[adjustedIndex] && !hasSoundPlayedBefore[adjustedIndex] && !levelChangedDown) {
//                     _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                     soundPlayed[adjustedIndex] = true;
//                     hasSoundPlayedBefore[adjustedIndex] = true;
//                   }
//                 },
//               ),
//               SizedBox(width: 20), // Spacing between LED and switches
//               SwitchWidget(
//                 switchState1: switchStates1[adjustedIndex],
//                 switchState2: switchStates2[adjustedIndex],
//                 onSwitch1Changed: (value) {
//                   setState(() {
//                     switchStates1[adjustedIndex] = value;
//                     if (switchStates1[adjustedIndex] && !hasSoundPlayedBefore[adjustedIndex]) {
//                       if (currentLevel >= adjustedIndex) {
//                         _audioPlayerManager.playBeepSound(_selectedBeepSound!);
//                         soundPlayed[adjustedIndex] = true;
//                         hasSoundPlayedBefore[adjustedIndex] = true;
//                       }
//                     }
//                   });
//                 },
//                 onSwitch2Changed: (value) {
//                   setState(() {
//                     switchStates2[adjustedIndex] = value;
//                   });
//                 },
//               ),
//             ],
//           ),
//         ),
//       );
//     }
//     return Container(); // Return an empty container when rowIndex is 7 or higher
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayerManager.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Water Level Monitor'),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Column(
//                     children: List.generate(7, (index) {
//                       return buildRow(index); // Directly using rowIndex
//                     }),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: WaterLevelDropdown(
//               targetLevel: targetLevel,
//               onLevelChanged: (newLevel) {
//                 setState(() {
//                   targetLevel = newLevel ?? 0;
//                   startAnimation(targetLevel);
//                   levelChangedDown = false; // Reset the levelChangedDown flag on level change
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
