import 'package:flutter/material.dart';
import 'package:foodie/screens/home_screen/home_nav_screen.dart';
import 'package:foodie/screens/onboarding/intro_slider_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeNavScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
