class Answers {
  String? answerA;
  String? answerB;
  String? answerC;
  String? answerD;
  String? answerE;
  String? answerF;

  Answers(
      {this.answerA,
      this.answerB,
      this.answerC,
      this.answerD,
      this.answerE,
      this.answerF});

  List get answers {
    var answers = [];
    if (answerA != null) {
      answers.add(answerA);
    }
    if (answerB != null) {
      answers.add(answerB);
    }
    if (answerC != null) {
      answers.add(answerC);
    }
    if (answerD != null) {
      answers.add(answerD);
    }
    if (answerE != null) {
      answers.add(answerE);
    }
    if (answerF != null) {
      answers.add(answerF);
    }
    return answers.toList();
  }

  Answers.fromJson(Map<String, dynamic> json) {
    answerA = json['answer_a'];
    answerB = json['answer_b'];
    answerC = json['answer_c'];
    answerD = json['answer_d'];
    answerE = json['answer_e'];
    answerF = json['answer_f'];
  }
}
