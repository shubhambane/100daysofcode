import 'package:flutter/material.dart';

class StatCount extends StatelessWidget {
  const StatCount({
    super.key,
    required this.statValue,
    required this.statTitle,
  });

  final int statValue;
  final String statTitle;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: const TextStyle(
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: '$statTitle\n',
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          TextSpan(
            text: statValue.toString(),
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
