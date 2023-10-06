// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          'Hey, Shubham!',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 12),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Saturday',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Symbols.expand_more_rounded,
                    size: 22,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.62,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Lets Plan\nyour tasks',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.22,
                    decoration: BoxDecoration(
                      color: Color(0XFF202020),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Symbols.arrow_forward,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 12,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0XFFF3D796),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Schedule Meetings',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'Schedule meetings with one click',
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: Color(0XFFF5E9C9),
                    child: Icon(
                      Symbols.north_east_rounded,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  HomeDateWidget(
                    date: '05',
                    day: 'Thu',
                  ),
                  HomeDateWidget(
                    date: '06',
                    day: 'Fri',
                  ),
                  HomeDateWidget(
                    date: '07',
                    day: 'Sat',
                    containerColor: Colors.black,
                    textColor: Colors.white,
                  ),
                  HomeDateWidget(
                    date: '08',
                    day: 'Sun',
                  ),
                ],
              ),
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0XFFDEDFFD),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeCalendar(
                      time: '08:00',
                    ),
                    HomeCalendar(
                      time: '09:00',
                      task: '#100dayofcode',
                      status: 'LinkedIn',
                    ),
                    HomeCalendar(
                      time: '10:00',
                      task: 'Coffee',
                      status: 'Break',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeCalendar extends StatelessWidget {
  const HomeCalendar({
    super.key,
    required this.time,
    this.task,
    this.status,
  });

  final String time;
  final String? task;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 40,
      child: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 2,
                width: double.infinity,
                color: Colors.white30,
              ),
            ),
            Center(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      time,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  task != null
                      ? badges.Badge(
                          position:
                              badges.BadgePosition.topEnd(top: -14, end: 36),
                          badgeContent: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Text(
                              status!,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          badgeStyle: badges.BadgeStyle(
                            badgeColor: Colors.transparent,
                            elevation: 0,
                          ),
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                              child: Text(
                                task!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeDateWidget extends StatelessWidget {
  const HomeDateWidget({
    super.key,
    this.containerColor,
    this.textColor,
    required this.date,
    required this.day,
  });

  final Color? containerColor;
  final Color? textColor;
  final String date;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      width: MediaQuery.of(context).size.width * 0.2,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: containerColor ?? Color(0XFFFCF6EA),
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: TextStyle(
              color: textColor ?? Colors.black45,
            ),
            children: [
              TextSpan(
                text: date,
                style: TextStyle(
                  fontSize: 36,
                ),
              ),
              TextSpan(
                text: '\n$day',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
