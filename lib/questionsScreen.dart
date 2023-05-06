import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './question_Button.dart';
import './data/questions.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({super.key, required this.gotAnswer});
  final void Function(String answer) gotAnswer;

  @override
  State<questionScreen> createState() {
    // TODO: implement createState

    return questionScreenState();
  }
}

class questionScreenState extends State<questionScreen> {
  var currentIndex = 0;
  void questionIndex(String selectAnswer) {
    widget.gotAnswer(selectAnswer);
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentIndex];
    return SizedBox(
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, //its for vertical axis alignment
          crossAxisAlignment:
              CrossAxisAlignment.stretch, //its for horizontal alignment
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                color: Color.fromARGB(255, 160, 87, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            //map used for random dynamically use options for answers.
            ...currentQuestion.getSuffledanswers().map(
              (answer) {
                return question_buttton(
                    onTap: () {
                      questionIndex(answer);
                    },
                    answerText: answer);
              },
            ),
          ],
        ),
      ),
    );
  }
}
