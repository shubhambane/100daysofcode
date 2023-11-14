import 'package:flutter/material.dart';
import '../widgets/my_auth_btn.dart';
import '../widgets/my_social_auth_btn.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'Bane',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 12,
            ),
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://images.unsplash.com/photo-1610819316905-1dabf94e09f1?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Discover Your Dream Home',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                const ButtonBar(
                  alignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    MyAuthBtn(
                      btnText: 'Login',
                      backgroundColor: Colors.black,
                      borderColor: Colors.transparent,
                      textColor: Colors.white,
                    ),
                    MyAuthBtn(
                      btnText: 'Sign Up',
                      backgroundColor: Colors.transparent,
                      borderColor: Colors.black26,
                      textColor: Colors.black,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          height: 1,
                          color: Colors.black12,
                        ),
                      ),
                      const Text('or Login with'),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          height: 1,
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                const MySocialAuthBtn(
                  imageSrc: 'assets/media/search.png',
                  btnText: 'Google',
                ),
                const MySocialAuthBtn(
                  imageSrc: 'assets/media/apple-logo.png',
                  btnText: 'Apple',
                ),
                const MySocialAuthBtn(
                  imageSrc: 'assets/media/facebook.png',
                  btnText: 'Facebook',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
