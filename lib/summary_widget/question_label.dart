import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionLabel extends StatelessWidget{
  final int quesitonIndex;
  final bool correct;

  const QuestionLabel({required this.correct, required this.quesitonIndex, super.key});

  @override
  Widget build(BuildContext context) {
    final auxilaryColor = correct
      ?  const Color.fromARGB(255, 150, 198, 241)
      :  const Color.fromARGB(255, 239, 143, 241);

    return Container(
        width: 30,
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: auxilaryColor,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Text(
          (quesitonIndex + 1).toString(),
          style: GoogleFonts.lato(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}