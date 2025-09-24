import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Text(
          'Welcome $username to the Home Screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
