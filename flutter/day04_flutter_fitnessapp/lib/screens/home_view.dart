import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
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
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0XFF283333),
        body: const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
          child: TabBarView(
            children: [
              WorkOutTab(),
              Icon(Icons.directions_transit),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.white.withOpacity(0.2),
                width: 2.0,
              ),
            ),
          ),
          child: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            dividerColor: Colors.transparent,
            indicator: const BoxDecoration(
              color: Colors.transparent,
            ),
            tabs: [
              CircleAvatar(
                backgroundColor: Colors.white.withOpacity(0.2),
                radius: 30,
                child: const Tab(
                  icon: Icon(
                    Symbols.fitness_center_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
              const Tab(
                icon: Icon(
                  Symbols.restaurant_rounded,
                  color: Colors.white,
                ),
              ),
              const Tab(
                icon: Icon(
                  Symbols.person_filled,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
