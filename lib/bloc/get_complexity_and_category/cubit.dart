import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/bloc/get_complexity_and_category/state.dart';
import 'package:quiz/bloc/questions/cubit.dart';
import 'package:quiz/core/di.dart';
import 'package:quiz/screens/question_screen.dart';

class ComplexityCategoryCubit extends Cubit<ComplexityCategoryState> {
  ComplexityCategoryCubit() : super(const ComplexityCategoryState.initial());

  void changeDifficulty(Difficulty difficulty) {
    emit(state.copyWith(difficulty: difficulty));
  }

  void changeCategory(Category category) {
    emit(state.copyWith(category: category));
  }

  void openQuestionScreen(BuildContext context) async {
    locator.get<QuestionCubit>().loadQuestionByParams(
        difficulty: state.difficulty, category: state.category);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const QuestionScreen()),
    );
  }
}
