import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  final String logoPath = 'assets/images/quiz-logo.png';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          logoPath,
          width: 200,
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          'Learning flutter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.deepPurple,
          ),
          icon: const Icon(Icons.arrow_right),
          label: const Text('Start quiz'),
        ),
      ],
    ));
  }
}
