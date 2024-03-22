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
      body: const StartScreen(),
    );
  }
}
