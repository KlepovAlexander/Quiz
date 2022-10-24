import 'package:quiz/model/answer.dart';
import 'package:quiz/model/correct_answers.dart';
import 'package:quiz/model/tags.dart';

class Questions {
  int? id;
  String? question;
  String? description;
  Answers? answers;
  String? multipleCorrectAnswers;
  CorrectAnswers? correctAnswers;
  String? correctAnswer;
  String? explanation;
  String? tip;
  List<Tags>? tags;
  String? category;
  String? difficulty;

  Questions(
      {this.id,
        this.question,
        this.description,
        this.answers,
        this.multipleCorrectAnswers,
        this.correctAnswers,
        this.correctAnswer,
        this.explanation,
        this.tip,
        this.tags,
        this.category,
        this.difficulty});

  Questions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    question = json['question'];
    description = json['description'];
    answers =
    json['answers'] != null ? new Answers.fromJson(json['answers']) : null;
    multipleCorrectAnswers = json['multiple_correct_answers'];
    correctAnswers = json['correct_answers'] != null
        ? new CorrectAnswers.fromJson(json['correct_answers'])
        : null;
    correctAnswer = json['correct_answer'];
    explanation = json['explanation'];
    tip = json['tip'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
    category = json['category'];
    difficulty = json['difficulty'];
  }
}
