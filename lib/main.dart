import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/data/dummy_data.dart';
import 'package:yumyum/features/meal/presentation/pages/categories_page.dart';
import 'package:yumyum/features/meal/presentation/pages/category_details_page.dart';
import 'package:yumyum/features/meal/presentation/pages/filters_page.dart';
import 'package:yumyum/features/meal/presentation/pages/meal_details_page.dart';

import 'features/meal/domain/models/filters_model.dart';
import 'features/meal/domain/models/meal_model.dart';
import 'features/meal/presentation/pages/tabs_page.dart';

void main() {
  runApp(YumYum());
}

class YumYum extends StatefulWidget {
  YumYum({Key? key}) : super(key: key);

  @override
  State<YumYum> createState() => _YumYumState();
}

class _YumYumState extends State<YumYum> {

  final ThemeData theme = ThemeData();
  final MealFilters filters = MealFilters();
  List<Meal> availableMeals = DUMMY_MEALS;

  
  void _onFilterChange(MealFilters filters) {
    setState(() {
    availableMeals = DUMMY_MEALS.where((Meal element) {
      if(filters.isGlutenFree && !element.isGlutenFree) return false;
      if(filters.isLactoseFree && !element.isLactoseFree) return false;
      if(filters.isVegan && !element.isVegan) return false;
      if(filters.isVegetarian && !element.isVegetarian) return false;
      return true;
    }).toList();
    print(availableMeals);
    print('filterChange');
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YumYum',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          canvasColor: Colors.amber.shade50,
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.cyan),
          textTheme: theme.textTheme.copyWith(
              bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      initialRoute: TabsPage.route,
      routes: {
        TabsPage.route: (context) => TabsPage(),
        CategoryDetailsPage.route: (context) => CategoryDetailsPage(availableMeals: availableMeals),
        MealDetailsPage.route: (context) => MealDetailsPage(),
        FiltersPage.route: (context) => FiltersPage(onFiltersChange: _onFilterChange,filters: filters)
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
