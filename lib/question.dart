class Question {
  late String questionText;
  late bool questionAnswer;

  Question( String q,  bool a) {
    questionText = q;
    questionAnswer = a;
  }
  // 也可以使用
  // Question(this.questionText,this.questionAnswer);
}
