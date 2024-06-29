import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_app_demo/home_screen/home_screen.dart';
import 'package:real_estate_app_demo/main_screen/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Real Estate Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}
