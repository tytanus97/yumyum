import 'package:flutter/material.dart';

import '../pages/category_details_page.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key, required this.color, required this.title, required this.id})
      : super(key: key);

  final String title;
  final Color color;
  final String id;

  void _selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(CategoryDetailsPage.route,arguments: <String, String>{'id':id,'title':title});
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return InkWell(
      splashColor: Colors.black.withOpacity(.3),
      onTap: () => _selectCategory(context),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Text(title, style: _theme.textTheme.titleMedium),
      ),
    );
  }
}
