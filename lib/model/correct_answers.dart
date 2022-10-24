class CorrectAnswers {
  String? answerACorrect;
  String? answerBCorrect;
  String? answerCCorrect;
  String? answerDCorrect;
  String? answerECorrect;
  String? answerFCorrect;

  CorrectAnswers(
      {this.answerACorrect,
        this.answerBCorrect,
        this.answerCCorrect,
        this.answerDCorrect,
        this.answerECorrect,
        this.answerFCorrect});

  CorrectAnswers.fromJson(Map<String, dynamic> json) {
    answerACorrect = json['answer_a_correct'];
    answerBCorrect = json['answer_b_correct'];
    answerCCorrect = json['answer_c_correct'];
    answerDCorrect = json['answer_d_correct'];
    answerECorrect = json['answer_e_correct'];
    answerFCorrect = json['answer_f_correct'];
  }
}
