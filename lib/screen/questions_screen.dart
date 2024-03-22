import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/utils/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  QuizQuestion quizQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quizQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ...quizQuestion.answers.map((answer) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnswerButton(text: answer, onTap: () {}),
                  const SizedBox(
                    height: 20,
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
