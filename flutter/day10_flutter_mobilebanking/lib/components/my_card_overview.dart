import 'package:flutter/material.dart';

class MyCardOverView extends StatelessWidget {
  const MyCardOverView({
    super.key,
    required this.cardColor,
    required this.isCardSelected,
  });
  final Color cardColor;
  final bool isCardSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        border: isCardSelected
            ? Border.all(
                width: 2.0,
                color: Colors.black54,
              )
            : Border.all(
                width: 0,
                color: Colors.transparent,
              ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                ),
                color: cardColor,
              ),
              height: 42,
              width: 46,
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 6,
                right: 2,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
                color: Color(0xFF15272B),
              ),
              height: 42,
              width: 26,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage('assets/media/visa.png'),
                    width: 20,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
