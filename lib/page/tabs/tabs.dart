import 'package:flutter/material.dart';
import 'package:third_app/page/categories.dart';
import 'package:third_app/page/favorites.dart';
import 'package:third_app/page/tabs/tab_selected.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  final List<TabSelected> _pages = const [
    TabSelected(title: 'Categories', widget: Categories()),
    TabSelected(title: 'Favorites', widget: Favorites()),
  ];
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabSelected = _pages[_selectedPageIndex];
    return Scaffold(
      appBar: AppBar(
        title: Text(tabSelected.title),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        onTap: (int index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          )
        ],
      ),
      body: tabSelected.widget,
    );
  }
}
