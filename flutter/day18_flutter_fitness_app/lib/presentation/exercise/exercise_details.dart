import 'package:flutter/material.dart';
import '../../data/exercise_constants.dart';

class ExerciseDetails extends StatelessWidget {
  const ExerciseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Text(
              'Next Exercise',
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            trailing: RichText(
              text: const TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 18),
                children: <TextSpan>[
                  TextSpan(
                    text: '2',
                  ),
                  TextSpan(
                    text: ' of 6',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                Image.network(
                  ExerciseConstants.avatarUrl,
                  height: 40,
                  width: 40,
                  fit: BoxFit.cover,
                ),
                const SizedBox(width: 16),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      ExerciseConstants.exerciseName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ExerciseConstants.duration,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Text(
            ExerciseConstants.description,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
