import 'package:flutter/material.dart';
import 'package:yumyum/features/meal/presentation/pages/categories_page.dart';

import 'favourites_page.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  final List<Map<String,Object>> _pages =  const [
    {'page': CategoriesPage(), 'title': 'Categories'},
    {'title':'Favourites', 'page': FavouritesPage()}
  ];

  int _selectedPageIndex = 0;

  void _selectTab(int index) {
      setState(() {
        _selectedPageIndex = index;
      });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
              title:  Text(_pages[_selectedPageIndex]['title'] as String),
          ),
          body: _pages[_selectedPageIndex]['page'] as Widget,
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Theme.of(context).primaryColor,
            currentIndex: _selectedPageIndex,
            selectedItemColor: Colors.amber,
            onTap: _selectTab,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Categories'),
              BottomNavigationBarItem(icon: Icon(Icons.star),label: 'Favourites'),
            ],
          ),
          drawer: Drawer(child: Text('Drawer')),
        );
  }
}
