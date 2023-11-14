import 'package:flutter/material.dart';

class MySocialAuthBtn extends StatelessWidget {
  const MySocialAuthBtn({
    super.key,
    required this.imageSrc,
    required this.btnText,
  });

  final String imageSrc;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.black12,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageSrc,
            height: 30,
            width: 30,
          ),
          Text('Continue with $btnText'),
          const SizedBox(
            width: 30,
          )
        ],
      ),

      // ListTile(
      //   leading: Image.asset(
      //     'assets/media/search.png',
      //     height: 30,
      //     width: 30,
      //   ),
      //   title: Text('Continue with Google'),
      // ),
    );
  }
}
