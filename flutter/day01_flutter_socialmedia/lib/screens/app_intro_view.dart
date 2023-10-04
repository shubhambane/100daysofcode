import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../commons/components.dart';

class AppIntroView extends StatefulWidget {
  const AppIntroView({super.key});

  @override
  State<AppIntroView> createState() => _AppIntroViewState();
}

class _AppIntroViewState extends State<AppIntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFB78D50),
      body: Container(
        margin: const EdgeInsets.only(top: 12),
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFFB78D50),
              Color(0XFFB78D50),
              Color(0XFFB78D50),
              Color(0XFFD9B99B),
              Color(0XFFFFFFFF),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 2,
                  decoration: BoxDecoration(
                    color: Colors.white30,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            Stack(
              clipBehavior: Clip.none,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Join ',
                    style: const TextStyle(
                      fontSize: 62,
                      color: Colors.white,
                      height: 1.3,
                      fontWeight: FontWeight.w200,
                    ),
                    children: [
                      const TextSpan(
                        text: 'Socials',
                        style: TextStyle(
                          color: Color(0xff5E2E34),
                        ),
                      ),
                      const TextSpan(
                        text: ' Network ',
                      ),
                      WidgetSpan(
                        child: Transform.rotate(
                          angle: 25 * (3.14159265359 / 180),
                          child: Container(
                            height: 60,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: const Center(
                              child: Text(
                                '👫🏻',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const TextSpan(
                        text: 'for Amlify\nin your\nlife.',
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: -165,
                  bottom: -750,
                  child: Image.asset(
                    'assets/media/intro_girl.png',
                    height: 1150,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/home');
        },
        child: GlassBg(
          height: 80,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundColor: Colors.white,
                child: Icon(
                  Symbols.lock,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  right: 12,
                ),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                    ),
                    children: [
                      TextSpan(
                        text: '>',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.3),
                        ),
                      ),
                      TextSpan(
                        text: '>',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.6),
                        ),
                      ),
                      const TextSpan(
                        text: '>',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
