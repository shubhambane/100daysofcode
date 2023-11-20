// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class SpeakersView extends StatefulWidget {
  const SpeakersView({super.key});

  @override
  State<SpeakersView> createState() => _SpeakersViewState();
}

class _SpeakersViewState extends State<SpeakersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 16,
                bottom: 24,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SPEAKERS',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(
                    height: 0,
                    width: 50,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          right: 80,
                          child: CustomAvatar(),
                        ),
                        Positioned(
                          right: 60,
                          child: CustomAvatar(),
                        ),
                        Positioned(
                          right: 40,
                          child: CustomAvatar(),
                        ),
                        Positioned(
                          right: 20,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Color(0xffE1E8EB),
                              radius: 22,
                              child: Text('+3'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 16,
              endIndent: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'TIMINGS',
                    style: TextStyle(
                      fontSize: 32,
                    ),
                  ),
                  Icon(
                    Symbols.north_east,
                    size: 36,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                CustomBox(
                  color: Color(0xFF012734),
                  title: '10',
                  subTitle: 'INTERACTIVE PLATFORMS',
                ),
                CustomBox(
                  color: Color(0xFFF44545),
                  title: '3',
                  subTitle: 'EXICTING DAYS',
                ),
              ],
            ),
            Image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80',
              ),
              height: 400,
              width: double.infinity,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 22,
        backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1697081544000-9d9edc53dd4b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80',
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final Color color;
  final String title;
  final String subTitle;
  const CustomBox(
      {super.key,
      required this.color,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 200,
      decoration: BoxDecoration(
        color: color,
      ),
      child: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
              text: '$title\n',
              style: TextStyle(
                height: 3,
                fontWeight: FontWeight.bold,
                fontSize: 42,
              ),
            ),
            TextSpan(
              text: subTitle,
              // style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
