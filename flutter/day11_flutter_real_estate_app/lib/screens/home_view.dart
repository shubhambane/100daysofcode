import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../components/home_property.dart';
import '../components/home_tag.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.black26,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Symbols.steppers,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find\nApartments',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Icon(
                        Symbols.bookmark_border_sharp,
                      ),
                    ),
                    const HomeTag(isActive: true, tagText: 'Whole List'),
                    const HomeTag(isActive: false, tagText: 'Site Visits'),
                    const HomeTag(isActive: false, tagText: 'Shubham'),
                  ],
                ),
              ),
              const HomeProperty(
                propertyName: 'Mixrr\nApartments',
                propertyImage:
                    'https://images.unsplash.com/photo-1557863577-c6d4950527fc?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                propertyDiscount: '9',
                propertyPrice: '\$100',
              ),
              const HomeProperty(
                propertyName: 'Shubham\nApartments',
                propertyImage:
                    'https://images.unsplash.com/photo-1512850183-6d7990f42385?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                propertyDiscount: '9',
                propertyPrice: '\$100',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
