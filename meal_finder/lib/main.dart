import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MealFinderApp());
}

class MealFinderApp extends StatelessWidget {
  const MealFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.tealAccent,
        scaffoldBackgroundColor: Colors.grey[900],
      ),
      home: const HomeScreen(),
    );
  }
}
