import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/utils/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key, required this.onSelectAnswer});

  void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;

  void answerQuestion(String answer) {
    setState(() {
      widget.onSelectAnswer(answer);
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizQuestion quizQuestion = questions[questionIndex];

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
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ...quizQuestion.getShuffledAnswers().map((answer) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  AnswerButton(
                      text: answer,
                      onTap: () {
                        answerQuestion(answer);
                      }),
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
