import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  final void Function() startQuiz;

  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Image.asset(
            'assets/images/quiz-logo.png', 
            width: 300, 
            color: const Color.fromARGB(190, 255, 255, 255),
          ),
          const SizedBox(height: 70,),
          Text(
            'Learn Flutter the fun way!', 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20,),
          OutlinedButton.icon(
            onPressed: startQuiz, 
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz',),
            icon: const Icon(Icons.launch),
          ),
        ],
      ),
    );
  }
}