// water_level_text.dart

import 'package:flutter/material.dart';

class WaterLevelText extends StatelessWidget {
  final int index;

  WaterLevelText({required this.index});

  @override
  Widget build(BuildContext context) {
    final List<String> waterLevels = [
      "100%",
      "90%",
      "75%",
      "60%",
      "45%",
      "30%",
      "15%"
    ];

    return SizedBox(
      width: 40, // Enough to accommodate "100%"
      child: Text(
        waterLevels[6 - index], // Reversed index for correct order
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}
