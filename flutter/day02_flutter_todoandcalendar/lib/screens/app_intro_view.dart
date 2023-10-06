// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_symbols_icons/symbols.dart';

class AppIntroView extends StatefulWidget {
  const AppIntroView({super.key});

  @override
  State<AppIntroView> createState() => _AppIntroViewState();
}

class _AppIntroViewState extends State<AppIntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF121212),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 80, 16, 0),
                  child: Text(
                    'Manage Your Tasks In A Second',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Icon(
                    Symbols.trending_up,
                    color: Colors.white,
                    size: 62,
                  ),
                ),
                IntroHeroWidget(),
              ],
            ),
            CircleDecoration(
              right: -45,
              top: MediaQuery.of(context).size.height * 0.2,
            ),
            CircleDecoration(
              right: -35,
              top: MediaQuery.of(context).size.height * 0.6,
            ),
            CircleDecoration(
              left: -35,
              top: MediaQuery.of(context).size.height * 0.4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: Text(
            'Get Started',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CircleDecoration extends StatelessWidget {
  const CircleDecoration({
    super.key,
    this.left,
    this.top,
    this.right,
    this.bottom,
  });

  final double? left;
  final double? top;
  final double? right;
  final double? bottom;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          border: Border.all(
            color: Colors.white.withOpacity(0.3),
            width: 2,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}

class IntroHeroWidget extends StatelessWidget {
  const IntroHeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          left: -80,
          bottom: 60,
          child: Container(
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Color(0XFFA9AFF9),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Container(
          height: 260,
          width: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
              ),
              fit: BoxFit.cover,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          right: -40,
          bottom: -20,
          child: Container(
            height: 100,
            width: 120,
            decoration: BoxDecoration(
              color: Color(0XFFF3D796),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '25k +\n',
                      style: TextStyle(
                        fontFamily: GoogleFonts.raleway().fontFamily,
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Users',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: -15,
          bottom: 90,
          child: Container(
            transform: Matrix4.rotationZ(0.5),
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/clock.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
      ],
    );
  }
}
