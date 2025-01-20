// import 'package:flutter/material.dart';
//
// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(7, (index) {
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text('Level ${index + 1}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }

// import 'package:flutter/material.dart';
//
// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(7, (index) {
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text('Level ${index + 1}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(7, (index) {
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text('Level ${index + 1}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(7, (index) {
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text('Level ${index + 1}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }
//
// import 'package:flutter/material.dart';
//
// // class WaterLevelDropdown extends StatelessWidget {
// //   final int targetLevel;
// //   final Function(int?) onLevelChanged;
// //
// //   WaterLevelDropdown({
// //     required this.targetLevel,
// //     required this.onLevelChanged,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return DropdownButton<int>(
// //       value: targetLevel,
// //       items: List.generate(8, (index) { // 8 items, including level 0
// //         return DropdownMenuItem<int>(
// //           value: index,
// //           child: Text(index == 0 ? 'Level 0' : 'Level ${index}'),
// //         );
// //       }),
// //       onChanged: onLevelChanged,
// //     );
// //   }
// // }
// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(8, (index) { // Now generate 8 levels, including Level 0
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text(index == 0 ? 'Level 0' : 'Level ${index}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }

import 'package:flutter/material.dart';

// class WaterLevelDropdown extends StatelessWidget {
//   final int targetLevel;
//   final Function(int?) onLevelChanged;
//
//   WaterLevelDropdown({
//     required this.targetLevel,
//     required this.onLevelChanged,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return DropdownButton<int>(
//       value: targetLevel,
//       items: List.generate(8, (index) { // 8 items, including level 0
//         return DropdownMenuItem<int>(
//           value: index,
//           child: Text(index == 0 ? 'Level 0' : 'Level ${index}'),
//         );
//       }),
//       onChanged: onLevelChanged,
//     );
//   }
// }
class WaterLevelDropdown extends StatelessWidget {
  final int targetLevel;
  final Function(int?) onLevelChanged;

  WaterLevelDropdown({
    required this.targetLevel,
    required this.onLevelChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<int>(
      value: targetLevel,
      items: List.generate(8, (index) { // Now generate 8 levels, including Level 0
        return DropdownMenuItem<int>(
          value: index,
          child: Text(index == 0 ? 'Level 0' : 'Level ${index}'),
        );
      }),
      onChanged: onLevelChanged,
    );
  }
}