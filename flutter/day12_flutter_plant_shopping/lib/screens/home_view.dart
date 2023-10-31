// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                    'https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png',
                  ),
                ),
                title: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                subtitle: Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Symbols.notifications,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFF6F6F6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 4,
                    horizontal: 8,
                  ),
                  title: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(
                    'Welcome back!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Symbols.add_circle,
                      size: 26,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
