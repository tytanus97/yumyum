import 'package:flutter/material.dart';

class MealSteps extends StatelessWidget {
const MealSteps({ Key? key, required List<String> steps }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: double.infinity,
      height: 300,
      child: Center(
        child: Text("steps"),
      ),
    );
  }
}