import 'package:flutter/material.dart';

import '../../domain/models/meal_model.dart';
import '../pages/meal_details_page.dart';

class MealItem extends StatelessWidget {
  final Meal meal;

  const MealItem({Key? key, required this.meal}) : super(key: key);

  void _selectMeal(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(MealDetailsPage.route, arguments: {'meal': meal});
  }

  String get affordability {
    switch (meal.affordability) {
      case Affordability.Affordable:
        return 'Affordable';
      case Affordability.Luxurious:
        return 'Luxurious';
      case Affordability.Pricey:
        return 'Pricey';
    }
  }

  String get complexity {
    switch (meal.complexity) {
      case Complexity.Challenging:
        return 'Challenging';
      case Complexity.Hard:
        return 'Hard';
      case Complexity.Simple:
        return 'Simple';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: GestureDetector(
        onTap: () => _selectMeal(context),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(children: [
            Stack(children: <Widget>[
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                child: Image.network(
                  meal.imageUrl,
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Colors.black.withOpacity(0.4),
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    meal.title,
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    overflow: TextOverflow.fade,
                    softWrap: true,
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(Icons.timer_sharp)),
                        Text('${meal.duration}m')
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(Icons.wallet)),
                        Text(affordability)
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(right: 5),
                            child: const Icon(Icons.work)),
                        Text(complexity)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
