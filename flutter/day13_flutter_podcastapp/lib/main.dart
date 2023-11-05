import 'package:day13_flutter_podcastapp/screens/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'screens/home_view.dart';
import 'screens/video_view.dart';

void main() {
  runApp(
    DevicePreview(
      defaultDevice: Devices.android.samsungGalaxyS20,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroView(),
        '/home': (context) => const HomeView(),
        '/video': (context) => const VideoView(),
      },
    );
  }
}
