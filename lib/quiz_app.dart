import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_question.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/results_screen.dart';
import 'package:quiz_app/start_screen.dart';


class QuizApp extends StatefulWidget {
  // static fields
  static const Color backgroundColor = Color.fromARGB(255, 80, 22, 180);
  static const int quizLength = 6;

  const QuizApp({super.key});

  @override
  State<QuizApp> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  // instance fields
  Widget? activeScreen;
  List<String> selectedAnswers = [];
  List<QuizQuestion> quizQuestions = [];

  // Lifecycle Methods
  @override
  void initState() {
    super.initState();
    activeScreen =  StartScreen(startQuiz);
  }

  // Build method 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App Demo',
      home: Scaffold(
        backgroundColor: QuizApp.backgroundColor,
        body: activeScreen,
      ),
    );
  }

  // public methods
  void selectAnswer(String selection){
    selectedAnswers.add(selection);

    if (selectedAnswers.length == quizQuestions.length){
      setState(() {
        activeScreen = ResultsScreen(restartQuiz: startQuiz, selectedAnswers: selectedAnswers, quizQuestions: quizQuestions);
      });
    }  
  }

  void startQuiz(){
    selectedAnswers = [];
    quizQuestions = (questions.toList()..shuffle()).take(QuizApp.quizLength).toList();
    setState(() {
      activeScreen = QuestionsScreen(onSelectAnswer: selectAnswer, quizQuestions: quizQuestions);
    });
  }


}