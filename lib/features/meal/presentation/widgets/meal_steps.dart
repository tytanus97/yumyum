import 'package:flutter/material.dart';

class MealSteps extends StatelessWidget {
  const MealSteps({Key? key, required this.steps}) : super(key: key);
  final List<String> steps;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(10)
            ),
            child: ListView.builder(itemBuilder: (ctx, index) => Column(
              children: [
                ListTile(
                  titleAlignment: ListTileTitleAlignment.center,
                  leading: Text('# $index'),
                  title: Text(steps[index], style: Theme.of(context).textTheme.titleSmall,),
                
                ),const Divider()
              ],
            ),itemCount: steps.length,),
          )),
    );
  }
}
