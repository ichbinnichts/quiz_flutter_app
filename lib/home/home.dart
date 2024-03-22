import 'package:flutter/material.dart';
import 'package:quiz_app/screen/start_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final String title = 'Quiz app';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple,
              Colors.cyan,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: const StartScreen(),
      ),
    );
  }
}
