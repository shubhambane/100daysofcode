import 'package:day06_flutter_sportoriented/screens/home_view.dart';
import 'package:day06_flutter_sportoriented/screens/intro_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroView(),
        '/home_view': (context) => const HomeView(),
      },
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}