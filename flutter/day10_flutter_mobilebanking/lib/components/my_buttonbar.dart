// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({
    super.key,
    required this.fBtnIcon,
    required this.fBtnText,
    required this.sBtnIcon,
    required this.sBtnText,
    required this.fBtnColor,
    required this.sBtnColor,
  });

  final IconData fBtnIcon;
  final String fBtnText;
  final Color fBtnColor;
  final IconData sBtnIcon;
  final String sBtnText;
  final Color sBtnColor;

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.38,
          height: 50,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              // backgroundColor: Color(0xFFDEFC66),
              backgroundColor: fBtnColor,
              elevation: 0,
            ),
            onPressed: () {},
            icon: Icon(
              fBtnIcon,
              color: Colors.black,
            ),
            label: Text(
              fBtnText,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.38,
          height: 50,
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: sBtnColor,
            ),
            onPressed: () {},
            icon: Icon(
              sBtnIcon,
              color: Colors.white,
            ),
            label: Text(
              sBtnText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
