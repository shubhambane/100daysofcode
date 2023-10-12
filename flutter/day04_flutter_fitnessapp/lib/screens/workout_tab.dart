// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class WorkOutTab extends StatefulWidget {
  const WorkOutTab({super.key});

  @override
  State<WorkOutTab> createState() => _WorkOutTabState();
}

class _WorkOutTabState extends State<WorkOutTab> {
//create a list of workouts with name, image, and bool isFavourite
  List<Map<String, dynamic>> workouts = [
    {
      'name': 'Monday Tabata',
      'image':
          'https://images.unsplash.com/photo-1591258370814-01609b341790?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80',
      'isFavourite': false,
    },
    {
      'name': 'Squats',
      'image':
          'https://images.unsplash.com/photo-1552196563-55cd4e45efb3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1926&q=80',
      'isFavourite': false,
    },
    {
      'name': 'Pull Ups',
      'image':
          'https://images.unsplash.com/photo-1601986313624-28c11ac26334?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1848&q=80',
      'isFavourite': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Text(
            'WORKOUT',
            style: TextStyle(
              color: Colors.white,
              fontSize: 52,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Average ',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Symbols.expand_more_rounded,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                    TextSpan(
                      text: '\nFitness level',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: '12',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 28,
                  ),
                  children: [
                    TextSpan(
                      text: '\nThur',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w100,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            height: MediaQuery.of(context).size.height * 0.50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: workouts.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/start_workout');
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width * 0.65,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(workouts[index]['image']),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        workouts[index]['name'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      trailing: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.3),
                        child: IconButton(
                          icon: Icon(
                            workouts[index]['isFavourite']
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.white,
                            size: 20,
                          ),
                          onPressed: () {
                            setState(() {
                              workouts[index]['isFavourite'] =
                                  !workouts[index]['isFavourite'];
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
