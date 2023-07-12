import 'package:flutter/material.dart';

import '../../domain/models/meal_model.dart';
import '../widgets/meal_detail.dart';

class MealDetailsPage extends StatelessWidget {
  static const route = '/meal-details';
const MealDetailsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final Map<String,Object> routeData = ModalRoute.of(context)!.settings.arguments as Map<String,Object>;
    final Meal meal = routeData['meal'] as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: MealDetail(meal: meal));
  }
}