import 'package:flutter/material.dart';

class DrawerListItem extends StatelessWidget {
const DrawerListItem({ Key? key, required this.icon, required this.label, required this.navigateTo }) : super(key: key);

  final IconData icon;
  final String label;
  final String navigateTo;

  void _navigateTo(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(navigateTo);
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: ListTile(
        onTap: () {_navigateTo(context);},
        leading: Icon(icon),
        title: Text(label)
      ) 
    );
  }
}