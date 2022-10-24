import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:quiz/bloc/get_complexity_and_category/cubit.dart';
import 'package:quiz/bloc/questions/cubit.dart';
import 'package:quiz/core/http_client.dart';

GetIt locator = GetIt.instance;

Future<bool> setupLocator() async {
  _setupNetwork();
  _setupBloc();
  return true;
}

void _setupNetwork() {
  locator.registerLazySingleton(() => HttpClientQuiz());
}

void _setupBloc() {
  locator
    ..registerSingleton(QuestionCubit(locator.get()))
    ..registerSingleton(ComplexityCategoryCubit());
}
