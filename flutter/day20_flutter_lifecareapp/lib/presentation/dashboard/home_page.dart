// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../domain/entities/mood.dart';
import '../../domain/repositories/mood_repository.dart';
import '../widgets/mood_button.dart';

class HomePage extends StatelessWidget {
  final MoodRepository moodRepository;

  const HomePage({
    super.key,
    required this.moodRepository,
  });

  @override
  Widget build(BuildContext context) {
    List<Mood> moods = moodRepository.getMoods();

    return Scaffold(
      backgroundColor: Color(0xFFF8F4F3),
      appBar: AppBar(
        backgroundColor: Color(0xFFF8F4F3),
        elevation: 0,
        leading: Container(
          height: 30,
          width: 30,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1552234994-66ba234fd567?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Welcome back,\n',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                ),
              ),
              TextSpan(
                text: 'Shubham Bane',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: moods.map((mood) => MoodButton(mood: mood)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
