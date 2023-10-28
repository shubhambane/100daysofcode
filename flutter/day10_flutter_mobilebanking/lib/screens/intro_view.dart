// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Wave',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(height: 20),
              Image(
                // 'https://www.freepik.com/free-vector/credit-card-payment-concept-landing-page_5566772.htm#query=money%20credit%20card&position=21&from_view=search&track=ais'
                // Image by pikisuperstar on Freepik
                image: AssetImage(
                  'assets/media/intro_img.png',
                ),
                height: MediaQuery.of(context).size.height * 0.5,
                fit: BoxFit.cover,
              ),
              Text(
                'Wave Your Way to Financial Freedom',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, justo ac ultrices ultrices, nisl nunc aliquam dolor, vitae aliquam nunc nisl vitae nisl.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: ButtonBar(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDEFC66),
              ),
              onPressed: () {},
              child: Text(
                'Open Account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF205865),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home_view');
              },
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
