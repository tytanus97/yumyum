import 'package:flutter/material.dart';

class MealIngredients extends StatelessWidget {
  const MealIngredients({Key? key, required this.ingredients})
      : super(key: key);

  final List<String> ingredients;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey)),
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              itemBuilder: (ctx, index) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      border: Border.all(
                          style: BorderStyle.solid,
                          width: 1,
                          color: Colors.amber),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(ingredients[index], textAlign: TextAlign.center)),
              itemCount: ingredients.length),
        ),
      ),
    );
  }
}
