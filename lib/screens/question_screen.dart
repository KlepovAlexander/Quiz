import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/bloc/questions/cubit.dart';
import 'package:quiz/bloc/questions/state.dart';
import 'package:quiz/core/di.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Question'),
      ),
      body: BlocBuilder<QuestionCubit, QuestionState>(
          bloc: locator.get<QuestionCubit>(),
          builder: (context, state) {
            if (!state.isLoading) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Container(
                        color: Colors.grey.withOpacity(0.1),
                        padding: const EdgeInsets.all(16),
                        child: Center(
                          child: Text(
                            state.questions![0].question!,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: Container(
                        child: ListView.builder(
                            itemBuilder: (context, index) {
                              return ElevatedButton(
                                onPressed: () {},
                                child: Text(state
                                    .questions![0].answers?.answers[index]),
                              );
                            },
                            itemCount:
                                state.questions![0].answers?.answers.length),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
