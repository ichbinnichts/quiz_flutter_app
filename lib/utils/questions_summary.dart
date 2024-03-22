import 'package:flutter/material.dart';

class QuestionsSummary extends StatefulWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  State<QuestionsSummary> createState() => _QuestionsSummaryState();
}

class _QuestionsSummaryState extends State<QuestionsSummary> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.summaryData.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Column(
              children: [
                Text(data['question'] as String),
                const SizedBox(
                  height: 20,
                ),
                Text(data['selected_answer'] as String),
                Text(data['right_answer'] as String),
              ],
            )
          ],
        );
      }).toList(),
    );
  }
}
