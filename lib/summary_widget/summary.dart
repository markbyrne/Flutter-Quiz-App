import 'package:flutter/material.dart';
import 'package:quiz_app/summary_widget/question_label.dart';
import 'package:quiz_app/summary_widget/question_summary.dart';

class Summary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const Summary({required this.summaryData, super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: 500),
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((questionData) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionLabel(correct: questionData['user_answer'] == questionData['correct_answer'], quesitonIndex: (questionData['question_index'] as int)),
                  const SizedBox(width: 20,),
                  QuestionSummary(questionData: questionData)
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
