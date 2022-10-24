import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/bloc/get_complexity_and_category/state.dart';
import 'package:quiz/bloc/questions/state.dart';
import 'package:quiz/core/http_client.dart';
import 'package:quiz/model/questions.dart';

class QuestionCubit extends Cubit<QuestionState>{
  final HttpClientQuiz httpClientQuiz;

  QuestionCubit(this.httpClientQuiz) : super(const QuestionState.initial());

  Future<void> loadQuestionByParams({required Difficulty difficulty, required Category category}) async {
    emit(state.copyWith(isLoading: true));

    List<Questions> questions = await httpClientQuiz.getRequest(
        difficulty: difficulty, category: category);

    emit(state.copyWith(questions: questions, isLoading: false));
  }


}