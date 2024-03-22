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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            quizQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ...quizQuestion.answers.map((answer) {
            return AnswerButton(text: answer, onTap: () {});
          }),
        ],
      ),
    );
  }
}
