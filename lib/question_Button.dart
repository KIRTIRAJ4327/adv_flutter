import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class question_buttton extends StatelessWidget {
  const question_buttton(
      {super.key, required this.onTap, required this.answerText});
  final void Function() onTap;
  final String answerText;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 51, 13, 101),
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(fontSize: 16, fontWeight: FontWeight.normal),
      ),
    );
  }
}
