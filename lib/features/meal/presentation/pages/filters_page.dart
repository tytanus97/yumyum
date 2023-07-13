import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/domain/models/filters_model.dart';
import 'package:yumyum/features/meal/presentation/widgets/drawer.dart';

class FiltersPage extends StatelessWidget {
  static const route = '/filters';
  FiltersPage({Key? key, required this.onFiltersChange, required this.filters}) : super(key: key);

  final Function onFiltersChange;
  final MealFilters filters;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Filters')),
      body: Container(
          child: ListView(
        children: [
          SwitchListTile(
              value: filters.isGlutenFree,
              title: const Text('Gluten free'),
              onChanged: (bool newValue) {
                  filters.isGlutenFree = newValue;
                  onFiltersChange(filters);
              }),
          SwitchListTile(
              value: filters.isLactoseFree,
              title: const Text('Lactose free'),
              onChanged: (bool newValue) {
                  filters.isLactoseFree = newValue;
                  onFiltersChange(filters);
              }),
          SwitchListTile(
              value: filters.isVegan,
              title: const Text('Vegan friendly'),
              onChanged: (bool newValue) {
                  filters.isVegan = newValue;
                  onFiltersChange(filters);
              }),
          SwitchListTile(
              value: filters.isVegetarian,
              title: const Text('Vegetarian friendly'),
              onChanged: (bool newValue) {
                  filters.isVegetarian = newValue;
                  onFiltersChange(filters);
              })
        ],
      )),
      drawer: const MainDrawer(),
    );
  }
}
