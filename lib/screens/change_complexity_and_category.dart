import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz/bloc/get_complexity_and_category/cubit.dart';
import 'package:quiz/bloc/get_complexity_and_category/state.dart';
import 'package:quiz/core/di.dart';

class ChooseComplexityAndCategory extends StatelessWidget {
  const ChooseComplexityAndCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ChangeComplexityWidget(),
            SizedBox(
              width: 16,
            ),
            ChangeCategoryWidget(),
          ],
        ),
        SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: ElevatedButton(
              child: const Text('Next'),
              onPressed: () => locator.get<ComplexityCategoryCubit>().openQuestionScreen(context),
            ))
      ],
    );
  }
}

class ChangeComplexityWidget extends StatelessWidget {
  const ChangeComplexityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComplexityCategoryCubit, ComplexityCategoryState>(
        bloc: locator.get<ComplexityCategoryCubit>(),
        builder: (context, state) {
          return Center(
            child: DropdownButton<String>(
              value: state.difficulty.toString(),
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {},
              items: Difficulty.values
                  .map((e) => DropdownMenuItem(
                      value: e.toString(),
                      onTap: () {
                        locator
                            .get<ComplexityCategoryCubit>()
                            .changeDifficulty(e);
                      },
                      child: Text(e.name)))
                  .toList(),
            ),
          );
        });
  }
}

class ChangeCategoryWidget extends StatelessWidget {
  const ChangeCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComplexityCategoryCubit, ComplexityCategoryState>(
        bloc: locator.get<ComplexityCategoryCubit>(),
        builder: (context, state) {
          return Center(
            child: DropdownButton<String>(
              value: state.category.toString(),
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? value) {},
              items: Category.values
                  .map((e) => DropdownMenuItem(
                      value: e.toString(),
                      onTap: () {
                        locator
                            .get<ComplexityCategoryCubit>()
                            .changeCategory(e);
                      },
                      child: Text(e.name)))
                  .toList(),
            ),
          );
        });
  }
}
