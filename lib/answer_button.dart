import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({required this.text, required this.onPressed, super.key});

  final String text;
  final void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 6, 1, 74),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
        ),
        onPressed: onPressed, 
        child: Text(text, textAlign: TextAlign.center,)
      ),
    );
  }
}