import 'package:adv_flutter/questionsScreen.dart';
import 'package:adv_flutter/resultsScreen.dart';
import 'package:flutter/material.dart';
import './homeContent.dart';
import 'package:adv_flutter/data/questions.dart';

const startAlign = Alignment.topRight;
const endAlign = Alignment.bottomLeft;

class homePage extends StatefulWidget {
  const homePage({super.key, required this.color1, required this.color2});

  final Color color1;
  final Color color2;

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // Widget? activeScreen; /*pointer passing through function*/
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   activeScreen = homeContent(switchScreen);
  //   super.initState();
  // }

  var activeScreen =
      'start-screen'; /* here we store value in string form than we call the ternaery expression for checking vales*/
  final List<String> selectAnswer =
      []; //here we want add values as answers to the questions in list.
  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswer.add(answer);
    if (selectAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.color1, widget.color2],
          begin: startAlign,
          end: endAlign,
        ),
      ),
      child: Center(
        // child: activeScreen == 'start-screen'
        //     ? homeContent(switchScreen)
        //     : QuestionScreen(),
        child: activeScreen == 'results-screen' /*ternary Expreession*/
            ? resultScreen(
                choosenAnswer: selectAnswer,
              )
            : activeScreen == 'start-screen'
                ? homeContent((switchScreen))
                : questionScreen(
                    gotAnswer: chooseAnswer,
                  ),
      ),
    );
  }
}
