import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homeContent extends StatelessWidget {
  const homeContent(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(height: 80),
        Text(
          'Learn Flutter the fun way!!',
          style: GoogleFonts.lato(
            fontSize: 28,
            fontWeight: FontWeight.normal,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        const SizedBox(height: 30),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.white,
            ),
            foregroundColor: Colors.white,

            // padding: const EdgeInsets.only(top: 20),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
