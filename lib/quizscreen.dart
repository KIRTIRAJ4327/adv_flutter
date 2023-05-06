import 'package:adv_flutter/quiz.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
    // TODO: implement createState

    return QuizScreenState();
  }
}

class QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        body: quizApp(),
      ),
    );
  }
}
