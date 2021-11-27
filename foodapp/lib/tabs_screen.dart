import 'package:flutter/material.dart';
import 'package:foodapp/category_food.dart';
import './favouritescreen.dart';
import './drawer.dart';
//import '../widgets/main_drawer.dart';
// import './favorites_screen.dart';
// import './categories_screen.dart';
class Tabscreen extends StatefulWidget{
  @override
  _TabscreenState createState() => _TabscreenState();
  
}
class _TabscreenState extends State<Tabscreen>{
  final List<Map<String, Object>> _pages = [
    {
      'page': CategoriesFood(),
      'title': 'Categories',
    },
    {
      'page': FavoritesScreen(),
      'title': 'Your Favorite',
    },
  ];
  int _selectedPageIndex = 1;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title'].toString()),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        //unselectedItemColor: Colors.white,
        selectedItemColor: Colors.deepPurple,
        currentIndex: _selectedPageIndex,
         type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.category),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.star),
            title: Text('Favorites'),
          ),
        ],
      ),
    );
  }
}