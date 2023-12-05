import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/models/routes.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    super.key,
    required this.meal,
  });

  final Meal meal;

  _selectMeal(BuildContext context) {
    Navigator.pushNamed(context, Routes.meal, arguments: meal);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              _selectMeal(context);
            },
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.network(
                        meal.imageUrl,
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Container(
                              width: double.infinity,
                              height: 400,
                              decoration:
                                  BoxDecoration(color: Colors.grey[200]),
                              child: Center(
                                  child: CircularProgressIndicator(
                                value: loadingProgress.expectedTotalBytes !=
                                        null
                                    ? loadingProgress.cumulativeBytesLoaded /
                                        loadingProgress.expectedTotalBytes!
                                    : null,
                              )));
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 15,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        color: Colors.black38,
                        width: 250,
                        child: Text(meal.title,
                            style: Theme.of(context).textTheme.titleLarge!),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined),
                          Text('${meal.duration.toString()} min')
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.work),
                          Text(meal.complexityText)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.attach_money),
                          Text(meal.costText)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
