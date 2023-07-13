import 'package:flutter/material.dart';

import 'drawer_list.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Drawer(
      
      child: Container(
      width: double.infinity,
      child: Column(children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
          decoration: BoxDecoration(color: theme.primaryColor),
          child: Text('Menu',style: theme.textTheme.titleMedium),
        ),
        DrawerList()
      ]),
    ));
  }
}
