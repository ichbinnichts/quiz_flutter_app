import 'package:flutter/material.dart';
import 'package:quiz_app/screen/questions_screen.dart';
import 'package:quiz_app/screen/start_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> selectedAnswers = [];
  final String title = 'Quiz app';
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

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
        child: activeScreen == 'start-screen'
            ? StartScreen(startQuiz: switchScreen)
            : QuestionsScreen(onSelectAnswer: chooseAnswer),
      ),
    );
  }
}
