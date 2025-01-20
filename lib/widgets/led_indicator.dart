import 'package:flutter/material.dart';

class LedIndicator extends StatelessWidget {
  final int index;
  final int currentLevel;

  LedIndicator({required this.index, required this.currentLevel});

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
    return Container(
      width: 30.0,
      height: 30.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: index <= currentLevel ? getLEDColor(index) : Colors.transparent,
        border: Border.all(color: Colors.black, width: 2),
      ),
    );
  }
}
