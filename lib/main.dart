import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/presentation/pages/categories_page.dart';
import 'package:yumyum/features/meal/presentation/pages/category_details_page.dart';
import 'package:yumyum/features/meal/presentation/pages/meal_details_page.dart';

import 'features/meal/presentation/pages/tabs_page.dart';

void main() {
  runApp(YumYum());
}

class YumYum extends StatelessWidget {
  YumYum({Key? key}) : super(key: key);
  final ThemeData theme = ThemeData();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YumYum',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.amber.shade50,
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.cyan),
          textTheme: theme.textTheme.copyWith(
            bodyLarge: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
            ),
            bodyMedium: const TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1)
            ),
            titleMedium: const TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold
            )
          )
          ),
      home: TabsPage(), 
      routes: {
       CategoryDetailsPage.route:(context) => CategoryDetailsPage(),
       MealDetailsPage.route:(context) => MealDetailsPage()
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
