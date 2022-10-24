import 'package:equatable/equatable.dart';

enum Difficulty {
  easy,
  medium,
  hard,
}

enum Category {
  linux,
  devOps,
  networking,
  programming,
  cloud,
  docker,
  kubernetes,
}

class ComplexityCategoryState extends Equatable {
  final Category category;
  final Difficulty difficulty;

  const ComplexityCategoryState._(
      {this.category = Category.linux, this.difficulty = Difficulty.easy});

  const ComplexityCategoryState.initial()
      : this._(category: Category.linux, difficulty: Difficulty.easy);

  ComplexityCategoryState copyWith({
    Category? category,
    Difficulty? difficulty,
  }) {
    return ComplexityCategoryState._(
      category: category ?? this.category,
      difficulty: difficulty ?? this.difficulty,
    );
  }

  @override
  List<Object?> get props => [category, difficulty];
}
