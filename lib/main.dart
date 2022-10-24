import 'package:flutter/material.dart';
import 'package:quiz/bloc/get_complexity_and_category/cubit.dart';
import 'package:quiz/core/di.dart';
import 'package:quiz/core/http_client.dart';
import 'package:quiz/screens/change_complexity_and_category.dart';

void main() {
  setupLocator().then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body:ChooseComplexityAndCategory()
        ));
  }
}
