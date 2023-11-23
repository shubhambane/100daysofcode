import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'data/repositories/mood_repository_impl.dart';
import 'presentation/dashboard/home_page.dart';
import 'presentation/intro/intro_page.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kDebugMode,
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
        fontFamily: GoogleFonts.openSans().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const IntroPage(),
        '/home-page': (context) => HomePage(
              moodRepository: MoodRepositoryImpl(),
            ),
      },
    );
  }
}
