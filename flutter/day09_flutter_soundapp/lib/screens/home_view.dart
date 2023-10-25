// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEFEFE),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mezo Sound',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'My Devices',
              // style: TextStyle(
              //   fontSize: 36,
              //   fontWeight: FontWeight.bold,
              // ),
            ),
            MyDevices(),
          ],
        ),
      ),
    );
  }
}

class MyDevices extends StatelessWidget {
  MyDevices({
    super.key,
  });

  List<Map<String, dynamic>> deviceList = [
    {
      'isConnected': true,
      'deviceName': 'Device 1',
      'deviceThumbnail':
          'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&q=80&w=1976&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
    {
      'isConnected': false,
      'deviceName': 'Device 2',
      'deviceThumbnail':
          'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&q=80&w=1976&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: deviceList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: isConnected ? Color(0xFFF0F5F5) : Color(0xFFF3F3F3),
              color: deviceList[index]['isConnected']
                  ? Color(0xFFF0F5F5)
                  : Color(0xFFF3F3F3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Image.network(
                  deviceList[index]['deviceThumbnail'],
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
