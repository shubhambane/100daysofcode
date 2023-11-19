import 'package:flutter/material.dart';
import '../../theme/colors.dart';
import '../../widgets/custom_elev_btn.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          margin: const EdgeInsets.only(bottom: 20),
          height: 300,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white.withOpacity(0.9),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Fashion Finds for\nEvery Occasion',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 22,
                ),
              ),
              const Text(
                'Discover curated collections that cater to every occasion, from casual chic to glamorous evenings',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              CustomElevBtn(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, '/home-page');
                },
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Don't have a account?",
                    ),
                    TextSpan(
                      text: ' Sign Up',
                      style: TextStyle(
                        color: kDefaultPurple,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
