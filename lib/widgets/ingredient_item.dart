import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String ingredient;

  const IngredientItem({
    super.key,
    required this.ingredient,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Card(
            color: Colors.amber,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ingredient,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        )
      ],
    );
  }
}
