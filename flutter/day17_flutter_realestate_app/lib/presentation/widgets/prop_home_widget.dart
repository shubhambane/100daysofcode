import 'package:flutter/material.dart';
import '../../models/property.dart';

class PropertyHomeWidget extends StatelessWidget {
  final Property property;

  const PropertyHomeWidget({
    super.key,
    required this.property,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            property.propertyImg,
            fit: BoxFit.cover,
            width: 260,
            height: 220,
          ),
          Text(
            property.propertyPrice,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            property.propertyAddress,
            style: const TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    );
  }
}
