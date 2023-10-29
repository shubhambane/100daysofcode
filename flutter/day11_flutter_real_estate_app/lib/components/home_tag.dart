import 'package:flutter/material.dart';

class HomeTag extends StatelessWidget {
  const HomeTag({
    super.key,
    required this.isActive,
    required this.tagText,
  });

  final bool isActive;
  final String tagText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(left: 14),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        border: isActive
            ? Border.all(
                color: Colors.black26,
                width: 1,
              )
            : Border.all(
                color: Colors.transparent,
                width: 0,
              ),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          tagText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
