import 'package:flutter/material.dart';
import 'exercise_content.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      backgroundColor: Colors.white,
      body: const SingleChildScrollView(
        child: ExerciseContent(),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.chevron_left,
        ),
      ),
      elevation: 0,
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.ios_share_outlined,
          ),
        ),
      ],
      backgroundColor: Colors.transparent,
    );
  }
}
