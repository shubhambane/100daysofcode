import 'package:flutter/material.dart';
import '../../../models/category.dart';
import '../../../models/property.dart';
import '../../widgets/category_home_widget.dart';
import '../../widgets/filters.dart';
import '../../widgets/prop_home_widget.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<Property> properties = [
    Property(
      propertyImg:
          'https://images.unsplash.com/photo-1624204386084-dd8c05e32226?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      propertyPrice: '\$500,000',
      propertyAddress: '123 Main St, Cityville',
    ),
    Property(
      propertyImg:
          'https://images.unsplash.com/photo-1525953776754-6c4b7ee655ab?q=80&w=1442&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D ',
      propertyPrice: '\$750,000',
      propertyAddress: '456 Elm St, Townburg',
    ),
    // Add more properties as needed
  ];

  final List<Category> categories = [
    Category(
      categoryName: 'New Listing',
      categoryImg:
          'https://images.unsplash.com/photo-1572811957812-aa542143b4ab?q=80&w=1471&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Category(
      categoryName: 'New Project',
      categoryImg:
          'https://images.unsplash.com/photo-1577413225650-3cde4a37d6b6?q=80&w=1527&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Category(
      categoryName: 'Open House',
      categoryImg:
          'https://images.unsplash.com/photo-1583843658920-f3a7b0f90849?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    Category(
      categoryName: 'Price Reduced',
      categoryImg:
          'https://images.unsplash.com/photo-1610819316905-1dabf94e09f1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    ),
    // Add more categories as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InlineWrapped(),
          Container(
            margin: const EdgeInsets.only(top: 16),
            height: 300,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: properties.length,
              itemBuilder: (context, index) {
                return PropertyHomeWidget(
                  property: properties[index],
                );
              },
            ),
          ),
          GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                category: categories[index],
              );
            },
          ),
        ],
      ),
    );
  }
}
