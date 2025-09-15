import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/language_screen.dart';
import 'screens/home_screen.dart';
import 'screens/settings_screen.dart';

void main() {
  runApp(PashuDoctorApp());
}

class PashuDoctorApp extends StatelessWidget {
  const PashuDoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PashuSwasthya',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/language': (context) => LanguageScreen(),
        '/home': (context) => HomeScreen(),
        '/settings': (context) => SettingsScreen(),
      },
    );
  }
}
