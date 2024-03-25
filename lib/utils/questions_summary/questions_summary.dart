import 'package:flutter/material.dart';
import 'package:quiz_app/utils/questions_summary/summary_item.dart';

class QuestionsSummary extends StatefulWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  State<QuestionsSummary> createState() => _QuestionsSummaryState();
}

class _QuestionsSummaryState extends State<QuestionsSummary> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: widget.summaryData
              .map(
                (data) => SummaryItem(itemData: data),
              )
              .toList(),
        ),
      ),
    );
  }
}
