import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFEFEAE7),
      body: Column(
        children: [
          Image.asset(
            'assets/media/intro_hero.png',
            height: screenHeight * 0.6,
          ),
          Text(
            'Lifetune',
            style: TextStyle(
              fontSize: screenWidth * 0.28,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.vinaSans().fontFamily,
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            'Take charge of your health:\nall aspects, one app!',
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: screenWidth * 0.8,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home-page');
              },
              child: const Text(
                "Let's start!",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
