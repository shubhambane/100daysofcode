import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeProperty extends StatelessWidget {
  const HomeProperty({
    Key? key,
    required this.propertyImage,
    required this.propertyName,
    required this.propertyDiscount,
    required this.propertyPrice,
  }) : super(key: key);

  final String propertyImage;
  final String propertyName;
  final String propertyDiscount;
  final String propertyPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 5,
        bottom: 15,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12),
      width: double.infinity,
      height: 370,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          image: NetworkImage(propertyImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: Container(
              height: 60,
              width: 60,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                Symbols.favorite,
                color: Colors.white,
                size: 18,
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  propertyName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 36,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 16.0,
                    bottom: 8,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: '$propertyDiscount%\n',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 28,
                      ),
                      children: const [
                        TextSpan(
                          text: 'brokerage\non all deals',
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Icon(
                          Symbols.call,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Book Now',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
