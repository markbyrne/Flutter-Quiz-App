import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/summary_widget/summary.dart';

class ResultsScreen extends StatelessWidget{
  // instance fields
  final void Function() restartQuiz;
  final List<String> selectedAnswers;
  final List<QuizQuestion> quizQuestions;

  // constructor
  const ResultsScreen({required this.restartQuiz, required this.selectedAnswers, required this.quizQuestions, super.key});

  // build method
  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> summaryData = getSummaryData();
    final int numCorrectAnswers = getNumCorrectAnswers(summaryData);
    final int totalQuestions = summaryData.length;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You answered $numCorrectAnswers out of $totalQuestions questions correctly.',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(200, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Summary(summaryData: summaryData),
            const SizedBox(height: 20,),
            OutlinedButton.icon(
              onPressed: restartQuiz, 
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: Text('Restart Quiz',),
              icon: Icon(Icons.restart_alt_rounded),
            ),
          ],
        ),
      ),
    );
  }

  // public methods
  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summaryList = [];

    for(var i = 0; i< selectedAnswers.length; i++){
      summaryList.add({
        'question_index': i,
        'question': quizQuestions[i].question,
        'correct_answer': quizQuestions[i].answers[0],
        'user_answer': selectedAnswers[i]
      });
    }

    return summaryList;
  }

  int getNumCorrectAnswers(List<Map<String, Object>> summaryData){
    return summaryData.where(
        (data){
          return data['user_answer'] == data['correct_answer'];
        }
      ).length;
  }
}