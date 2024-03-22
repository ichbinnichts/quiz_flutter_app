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
      ],
    ));
  }
}
