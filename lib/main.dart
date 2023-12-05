import 'package:flutter/material.dart';
import 'package:meals/models/routes.dart';
import 'package:meals/screens/category_meal_screen.dart';
import 'package:meals/screens/category_screen.dart';
import 'package:meals/screens/meal_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.amber,
          secondary: Colors.purple,
        ),
        canvasColor: Colors.amber.shade50,
        textTheme: theme.textTheme.copyWith(
            titleLarge: const TextStyle(
              fontFamily: 'Roboto',
              color: Colors.white,
            ),
            titleMedium: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            bodyMedium: const TextStyle(
                fontFamily: 'Raleway',
                color: Colors.black,
                fontWeight: FontWeight.w500)),
      ),
      routes: {
        Routes.home: (context) => const CategoryScreen(),
        Routes.categoriesMeals: (context) => const CategoryMealScreen(),
        Routes.meal: (context) => const MealScreen(),
      },
      initialRoute: Routes.home,
    );
  }
}
