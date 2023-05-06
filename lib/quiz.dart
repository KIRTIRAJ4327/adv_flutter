import 'package:flutter/material.dart';
import './homePage.dart';

class quizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return homePage(
      color1: Color.fromARGB(255, 134, 0, 171),
      color2: Color.fromARGB(255, 26, 88, 119),
    );
  }
}
