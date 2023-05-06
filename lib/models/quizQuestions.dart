// class quizQuestions {
//   const quizQuestions(this.text, this.answers);

//   final String text;
//   final List<String> answers;
// }
class quiz_Questions {
  const quiz_Questions(this.text, this.answers);

  final String text;
  final List<String> answers;
  List<String> getSuffledanswers() {
    final suffledList = List.of(answers);
    suffledList.shuffle();
    return suffledList;
  }
}
