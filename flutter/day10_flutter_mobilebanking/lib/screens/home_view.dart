// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import 'tabs/dashboard_tab.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    DashboardTab(),
    DashboardTab(),
    DashboardTab(),
    DashboardTab(),
    DashboardTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Symbols.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.bar_chart),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.credit_card),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Symbols.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
