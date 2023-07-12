import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/presentation/widgets/category_item.dart';

import '../../data/dummy_data.dart';
import '../../domain/models/category_model.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView(
          padding: const EdgeInsets.all(25),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: DUMMY_CATEGORIES
              .map((Category category) =>
                  CategoryItem(color: category.color, title: category.title, id: category.id,))
              .toList(),
        );

  }
}
