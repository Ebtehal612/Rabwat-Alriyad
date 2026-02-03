import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  static const String routeName = '/home';
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}