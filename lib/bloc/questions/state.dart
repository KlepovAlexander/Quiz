import 'package:equatable/equatable.dart';
import 'package:quiz/model/questions.dart';

class QuestionState extends Equatable{
  final List<Questions>? questions;
  final bool isLoading;

  const QuestionState._({this.questions, this.isLoading = true});

  const QuestionState.initial()
      : this._(questions: null, isLoading: true);

  QuestionState copyWith({
    List<Questions>? questions,
    bool? isLoading,
  }) {
    return QuestionState._(
      questions: questions ?? this.questions,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [questions, isLoading];

}