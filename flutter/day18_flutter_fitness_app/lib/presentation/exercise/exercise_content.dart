import 'package:flutter/material.dart';
import '../../data/exercise_constants.dart';
import 'exercise_details.dart';

class ExerciseContent extends StatelessWidget {
  const ExerciseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.network(
          ExerciseConstants.imageUrl,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
        ),
        ExerciseDetails(),
      ],
    );
  }
}
