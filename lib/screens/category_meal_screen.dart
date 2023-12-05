import 'package:flutter/material.dart';
import 'package:meals/data/dummy_data.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  const CategoryMealScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category category =
        ModalRoute.of(context)!.settings.arguments as Category;

    final List<Meal> meals = dummyMeals
        .where((element) => element.categories.contains(category.id))
        .toList();

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return MealItem(meal: meals[index]);
          },
        ),
      ),
    );
  }
}
