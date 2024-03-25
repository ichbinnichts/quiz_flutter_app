import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/utils/questions_summary/questions_summary.dart';

class ResultScreen extends StatefulWidget {
  ResultScreen(
      {super.key, required this.selectedAnswers, required this.onRestart});

  final void Function() onRestart;

  List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'right_answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    final summaryData = widget.getSummaryData();
    final int numTotalQuestions = questions.length;
    final int numCorrectQuestions = summaryData
        .where((data) => data['selected_answer'] == data['right_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions correct answers',
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            QuestionsSummary(summaryData: summaryData),
            const SizedBox(
              height: 20,
            ),
            TextButton.icon(
              onPressed: widget.onRestart,
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart the quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
