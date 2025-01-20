// //only beep sound
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart'; // Import the audioplayer package
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Water Level Monitor',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: WaterLevelScreen(),
//     );
//   }
// }
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0; // Size for the LEDs
//   final double spacing = 20.0; // Spacing between components
//   final double rowSpacing = 15.0; // Uniform spacing between rows
//
//   List<bool> switchStates = List.generate(14, (index) => false);
//   final List<String> waterLevels = [
//     "15%",
//     "30%",
//     "45%",
//     "60%",
//     "75%",
//     "90%",
//     "100%"
//   ];
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer(); // Declare the AudioPlayer
//   final List<String> _beepSounds = ['beep.mp3', 'notification_1.mp3'];
//   String _selectedBeepSound = 'beep.mp3';
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
//             // Play sound when the 7th LED is lit
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
//   // Play the selected beep sound
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound));
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
//   Widget buildLEDIndicator(int index) {
//     return Container(
//       width: ledSize,
//       height: ledSize,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: index <= currentLevel ? getLEDColor(index) : Colors.transparent,
//         border: Border.all(
//           color: Colors.black,
//           width: 2,
//         ),
//       ),
//     );
//   }
//
//   Widget buildRow(int index) {
//     int reversedIndex = 6 - index;
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//       child: IntrinsicHeight(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             buildLEDIndicator(reversedIndex),
//             SizedBox(width: spacing),
//             Text(
//               waterLevels[reversedIndex],
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(width: spacing),
//             Container(
//               width: 70,
//               child: Switch(
//                 value: switchStates[reversedIndex],
//                 activeColor: Colors.black,
//                 inactiveThumbColor: Colors.red,
//                 onChanged: (value) {
//                   setState(() {
//                     switchStates[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ),
//             SizedBox(width: spacing),
//             Container(
//               width: 70,
//               child: Switch(
//                 value: switchStates[reversedIndex + 7],
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//                 onChanged: (value) {
//                   setState(() {
//                     switchStates[reversedIndex + 7] = value;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose(); // Dispose of the audio player when the screen is disposed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Water Level Monitor')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 20),
//             Column(
//               children: List.generate(7, (index) => buildRow(index)),
//             ),
//             SizedBox(height: 30),
//             DropdownButton<int>(
//               value: targetLevel,
//               items: List.generate(7, (index) {
//                 return DropdownMenuItem<int>(
//                   value: index,
//                   child: Text('Level ${index + 1}'),
//                 );
//               }),
//               onChanged: (value) {
//                 setState(() {
//                   targetLevel = value!;
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// with beep selection
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart'; // Import the audioplayer package
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Water Level Monitor',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: WaterLevelScreen(),
//     );
//   }
// }
//
// class WaterLevelScreen extends StatefulWidget {
//   @override
//   _WaterLevelScreenState createState() => _WaterLevelScreenState();
// }
//
// class _WaterLevelScreenState extends State<WaterLevelScreen> {
//   final double ledSize = 30.0; // Size for the LEDs
//   final double spacing = 20.0; // Spacing between components
//   final double rowSpacing = 15.0; // Uniform spacing between rows
//
//   List<bool> switchStates = List.generate(14, (index) => false);
//   final List<String> waterLevels = [
//     "15%",
//     "30%",
//     "45%",
//     "60%",
//     "75%",
//     "90%",
//     "100%"
//   ];
//
//   int currentLevel = 0;
//   Timer? timer;
//   bool isIncreasing = true;
//   int targetLevel = 0;
//
//   final AudioPlayer _audioPlayer = AudioPlayer(); // Declare the AudioPlayer
//   final List<String> _beepSounds = ['beep.mp3', 'notification_1.mp3'];
//   String _selectedBeepSound = 'beep.mp3'; // Default selected sound
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
//             // Play sound when the 7th LED is lit
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
//   // Play the selected beep sound
//   Future<void> _playBeepSound() async {
//     try {
//       await _audioPlayer.play(AssetSource(_selectedBeepSound));
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
//   Widget buildLEDIndicator(int index) {
//     return Container(
//       width: ledSize,
//       height: ledSize,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: index <= currentLevel ? getLEDColor(index) : Colors.transparent,
//         border: Border.all(
//           color: Colors.black,
//           width: 2,
//         ),
//       ),
//     );
//   }
//
//   Widget buildRow(int index) {
//     int reversedIndex = 6 - index;
//     return Padding(
//       padding: EdgeInsets.symmetric(vertical: rowSpacing / 2),
//       child: IntrinsicHeight(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             buildLEDIndicator(reversedIndex),
//             SizedBox(width: spacing),
//             Text(
//               waterLevels[reversedIndex],
//               style: TextStyle(fontSize: 16.0),
//             ),
//             SizedBox(width: spacing),
//             Container(
//               width: 70,
//               child: Switch(
//                 value: switchStates[reversedIndex],
//                 activeColor: Colors.black,
//                 inactiveThumbColor: Colors.red,
//                 onChanged: (value) {
//                   setState(() {
//                     switchStates[reversedIndex] = value;
//                   });
//                 },
//               ),
//             ),
//             SizedBox(width: spacing),
//             Container(
//               width: 70,
//               child: Switch(
//                 value: switchStates[reversedIndex + 7],
//                 activeColor: Colors.green,
//                 inactiveThumbColor: Colors.red,
//                 onChanged: (value) {
//                   setState(() {
//                     switchStates[reversedIndex + 7] = value;
//                   });
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     timer?.cancel();
//     _audioPlayer.dispose(); // Dispose of the audio player when the screen is disposed
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Water Level Monitor')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SizedBox(height: 20),
//             Column(
//               children: List.generate(7, (index) => buildRow(index)),
//             ),
//             SizedBox(height: 30),
//             // Dropdown for selecting notification sound
//             DropdownButton<String>(
//               value: _selectedBeepSound,
//               items: _beepSounds.map((sound) {
//                 return DropdownMenuItem<String>(
//                   value: sound,
//                   child: Text(sound),
//                 );
//               }).toList(),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedBeepSound = value!;
//                 });
//               },
//             ),
//             SizedBox(height: 30),
//             DropdownButton<int>(
//               value: targetLevel,
//               items: List.generate(7, (index) {
//                 return DropdownMenuItem<int>(
//                   value: index,
//                   child: Text('Level ${index + 1}'),
//                 );
//               }),
//               onChanged: (value) {
//                 setState(() {
//                   targetLevel = value!;
//                   startAnimation(targetLevel);
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'screens/water_level_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Level Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WaterLevelScreen(),
    );
  }
}
