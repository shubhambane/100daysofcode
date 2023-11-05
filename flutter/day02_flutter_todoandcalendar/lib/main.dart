import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/app_intro_view.dart';
import 'screens/home_view.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const AppIntroView(),
        '/home': (context) => const HomeView(),
        // '/profile': (context) => const ProfileView(),
      },
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
