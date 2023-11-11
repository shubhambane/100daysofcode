import 'package:flutter/material.dart';

class ActionBtn extends StatelessWidget {
  const ActionBtn({
    super.key,
    required this.icon,
  });

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: CircleAvatar(
        radius: 22,
        backgroundColor: Colors.black.withOpacity(0.4),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
