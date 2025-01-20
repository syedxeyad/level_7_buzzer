import 'package:flutter/material.dart';

class LevelDropdown extends StatelessWidget {
  final String selectedBeepSound;
  final ValueChanged<String?> onSoundChanged;
  final int targetLevel;
  final Function(int?) onLevelChanged;

  LevelDropdown({
    required this.selectedBeepSound,
    required this.onSoundChanged,
    required this.targetLevel,
    required this.onLevelChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          value: selectedBeepSound,
          items: ['beep.mp3', 'notification_1.mp3'].map((sound) {
            return DropdownMenuItem<String>(value: sound, child: Text(sound));
          }).toList(),
          onChanged: onSoundChanged,
        ),
        SizedBox(height: 30),
        DropdownButton<int>(
          value: targetLevel,
          items: List.generate(7, (index) {
            return DropdownMenuItem<int>(
              value: index,
              child: Text('Level ${index + 1}'),
            );
          }),
          onChanged: onLevelChanged,
        ),
      ],
    );
  }
}
