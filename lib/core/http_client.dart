import 'package:dio/dio.dart';
import 'package:quiz/bloc/get_complexity_and_category/state.dart';
import 'package:quiz/model/questions.dart';

class HttpClientQuiz {
  final String _baseUrl =
      'https://quizapi.io/api/v1/questions?apiKey=FKw3kpdpOy9XGfRwH8FRiL2YaZQQfFb4Or8UngtQ';
  final Dio _dio = Dio();

  Future<List<Questions>> getRequest(
      {int limit = 10,
      required Difficulty difficulty,
      required Category category}) async {
    var formattedRequestData = _formatRequest(
        difficulty: difficulty, category: category, limit: limit);
    final response = await _dio.get(_baseUrl + formattedRequestData);
    return (response.data.toList() as List).map((e) => Questions.fromJson(e)).toList();
  }

  String _formatRequest(
          {required Difficulty difficulty,
          required Category category,
          required int limit}) =>
      "&difficulty=${difficulty.name}&category=${category.name}&limit=$limit";
}
