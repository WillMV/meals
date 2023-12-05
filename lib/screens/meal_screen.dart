import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/ingredient_item.dart';
import 'package:meals/widgets/step_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var index = 0;
    final Meal meal = ModalRoute.of(context)!.settings.arguments as Meal;
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(meal.imageUrl),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Text(
                'Ingredients',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Column(
                  children: meal.ingredients
                      .map((e) => IngredientItem(ingredient: e))
                      .toList(),
                ),
              ),
            ),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Container(
              margin: const EdgeInsets.all(25),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    style: BorderStyle.solid,
                  )),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 15,
                ),
                child: Column(
                  children: meal.steps.map((e) {
                    index++;
                    var divider = index < meal.steps.length;
                    return StepItem(
                      step: e,
                      index: index,
                      divider: divider,
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.star_border,
          )),
    );
  }
}
