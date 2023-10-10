// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class WorkOutTab extends StatefulWidget {
  const WorkOutTab({super.key});

  @override
  State<WorkOutTab> createState() => _WorkOutTabState();
}

class _WorkOutTabState extends State<WorkOutTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Text(
            'WORKOUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 52,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hello ',
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'bold',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: ' world!'),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
