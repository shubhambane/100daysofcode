import 'package:flutter/material.dart';

class MyAuthBtn extends StatelessWidget {
  const MyAuthBtn({
    super.key,
    required this.btnText,
    required this.backgroundColor,
    required this.borderColor,
    required this.textColor,
  });

  final String btnText;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width * 0.45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor,
          side: BorderSide(
            width: 1.2,
            color: borderColor,
          ),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/dashboard');
        },
        child: Text(
          btnText,
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
