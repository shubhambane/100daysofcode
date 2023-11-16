import 'package:flutter/material.dart';
import 'profile_goals.dart';
import 'profile_header.dart';
import 'profile_settings.dart';
import 'profile_statistics.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0XFFF5F5F5),
        elevation: 0,
        centerTitle: true,
        title: const Text('Profile'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/exercise');
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ProfileHeader(),
              ProfileStatistics(),
              ProfileGoals(),
              ProfileSettings(),
            ],
          ),
        ),
      ),
    );
  }
}
