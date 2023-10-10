// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'workout_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0XFF283333),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          child: TabBarView(
            children: [
              WorkOutTab(),
              Icon(Icons.directions_transit),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(icon: Icon(Icons.directions_car)),
            Tab(icon: Icon(Icons.directions_transit)),
            Tab(icon: Icon(Icons.directions_bike)),
          ],
        ),
      ),
    );
  }
}
