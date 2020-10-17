import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:second_app/home_screen.dart';
import 'package:second_app/profile_screen.dart';

void main() {
  runApp(AppScreen());
}

class AppScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stuper',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProfileScreen(),
      ),
    );
  }
}


