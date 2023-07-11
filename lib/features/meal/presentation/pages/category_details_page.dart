import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/data/dummy_data.dart';

import '../../domain/models/meal_model.dart';
import '../widgets/meal_item.dart';

class CategoryDetailsPage extends StatelessWidget {
static const route = '/category-details';

const CategoryDetailsPage({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'] ?? 'title';

    final List<Meal> categoryMeals = DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
      print(categoryMeals.toString());
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(itemBuilder: (ctx,index)  {
        return MealItem(meal: categoryMeals[index]);
      },itemCount: categoryMeals.length,)
    );
  }
}