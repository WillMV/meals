import 'package:meals/const/complexity.dart';

import '../const/cost.dart';

class Meal {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  final Cost cost;
  final Complexity complexity;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.cost,
    required this.complexity,
  });

  String get complexityText {
    switch (complexity) {
      case Complexity.simple:
        return 'easy';
      case Complexity.medium:
        return 'Medium';
      case Complexity.difficult:
        return 'Hard';
    }
  }

  String get costText {
    switch (cost) {
      case Cost.cheap:
        return 'Cheap';
      case Cost.expensive:
        return 'Expensive';
      case Cost.fair:
        return 'Fair';
    }
  }
}
