import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/models/quiz_question.dart';


class QuestionsScreen extends StatefulWidget{
  final void Function(String selection) onSelectAnswer;
  final List<QuizQuestion> quizQuestions;

  const QuestionsScreen({required this.onSelectAnswer, required this.quizQuestions, super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}


class _QuestionsScreenState extends State<QuestionsScreen>{
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = widget.quizQuestions[currentQuestionIndex];
    return Center(
      child: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30,),
            ...currentQuestion.getShuffledAnswers().map(
              (answer) {
                return AnswerButton(
                  text: answer, 
                  onPressed: (){
                    answerQuestion(answer);
                  }
                );
              }
            ),
          ],
        ),
      ),
    );
  }

  void answerQuestion(String selectedAnswer){
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      if(currentQuestionIndex < widget.quizQuestions.length-1){
        currentQuestionIndex++;
      }
    });
  }
}