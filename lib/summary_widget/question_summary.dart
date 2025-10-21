import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  // static constants
  static const Color questionColor = Color.fromARGB(200, 255, 255, 255);
  static const Color correctAnswerColor = Color.fromARGB(255, 202, 171, 252);
  static const Color userAnswerColor = Color.fromARGB(255, 181, 254, 246);

  // instance fields
  final Map<String, Object> questionData;

  // constructor
  const QuestionSummary({required this.questionData, super.key});

  // build method
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            (questionData['question'] as String),
            style: GoogleFonts.lato(
              color: questionColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            (questionData['correct_answer'] as String),
            style: const TextStyle(color: correctAnswerColor),
          ),
          Text(
            (questionData['user_answer'] as String),
            style: const TextStyle(color: userAnswerColor),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
