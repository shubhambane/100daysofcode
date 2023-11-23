// mood_button.dart

import 'package:flutter/material.dart';

import '../../domain/entities/mood.dart';

class MoodButton extends StatelessWidget {
  final Mood mood;

  const MoodButton({
    super.key,
    required this.mood,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(mood.title),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text(mood.icon),
        ),
      ],
    );
  }
}
