import 'package:flutter/material.dart';
import 'package:meals/models/category.dart';
import 'package:meals/models/routes.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  _selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed(Routes.categoriesMeals, arguments: category);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      onTap: () => _selectCategory(context),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [category.color, category.color.withOpacity(0.5)]),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            category.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
