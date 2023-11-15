import 'package:flutter/material.dart';

class ProfileGoalWidget extends StatelessWidget {
  const ProfileGoalWidget({
    super.key,
    required this.goalTitle,
    required this.goalValue,
    required this.valueUnit,
    required this.titleColor,
  });

  final String goalTitle;
  final double goalValue;
  final String valueUnit;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: titleColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              color: Colors.black,
            ),
            children: [
              TextSpan(
                text: '$goalTitle\n',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: goalValue.toString(),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' $valueUnit',
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
