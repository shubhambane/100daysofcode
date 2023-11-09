import 'package:flutter/material.dart';

class IntroVersionOne extends StatefulWidget {
  const IntroVersionOne({super.key});

  @override
  State<IntroVersionOne> createState() => IntroVersionOneState();
}

class IntroVersionOneState extends State<IntroVersionOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: const Color(0xFFF8C6FF),
        elevation: 0,
      ),
      backgroundColor: const Color(0xFFF8C6FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Self-perceived physical attractiveness',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/intro-v2');
                },
                child: Image.asset(
                  'assets/media/care.png',
                  height: 300,
                ),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: '47',
                      style: TextStyle(
                        fontSize: 232,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '%',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
