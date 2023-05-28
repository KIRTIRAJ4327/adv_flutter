import 'package:adv_flutter/data/questions.dart';
import 'package:adv_flutter/question_summary.dart';
import 'package:flutter/material.dart';

class resultScreen extends StatelessWidget {
  resultScreen({super.key, required this.choosenAnswer});
  final List<String> choosenAnswer;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': choosenAnswer[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuesstions = questions.length;
    final numCorrectQuesstions = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;
    return SizedBox(
      height: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuesstions ot of $numTotalQuesstions question correectly!!',
            ),
            const SizedBox(
              height: 10,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
