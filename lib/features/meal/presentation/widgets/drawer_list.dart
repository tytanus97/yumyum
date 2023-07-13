import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/presentation/pages/filters_page.dart';
import 'package:yumyum/features/meal/presentation/pages/tabs_page.dart';
import 'package:yumyum/features/meal/presentation/widgets/drawer_list_item.dart';

class DrawerList extends StatelessWidget {
const DrawerList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.centerLeft,
      child: const Column(children: [
        DrawerListItem(icon: Icons.settings,label: 'Filters', navigateTo: FiltersPage.route),
        DrawerListItem(icon: Icons.restaurant, label: 'Meals', navigateTo: TabsPage.route), 
      ]),
    );
  }
}