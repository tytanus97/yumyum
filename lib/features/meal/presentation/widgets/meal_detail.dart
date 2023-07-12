import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/presentation/widgets/meal_ingredients.dart';
import 'package:yumyum/features/meal/presentation/widgets/meal_steps.dart';

import '../../domain/models/meal_model.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({Key? key, required this.meal}) : super(key: key);
  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: Column(children: [
        SizedBox(
          width: double.infinity,
          height: 300,
          child: Image.network(meal.imageUrl, fit: BoxFit.cover),
        ),
        const SizedBox(height: 20),
        Text('Ingredients',style: Theme.of(context).textTheme.titleLarge,),
        MealIngredients(ingredients: meal.ingredients),
        Divider(),
        Text('Steps',style: Theme.of(context).textTheme.titleLarge,),
        MealSteps(steps: meal.steps)
      ]),
    );
  }
}
