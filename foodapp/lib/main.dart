import 'package:flutter/material.dart';
import 'package:foodapp/tabs_screen.dart';
import './category_meal.dart';
import './category_food.dart';
import './categorymeals.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: CategoriesFood(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => Tabscreen(),
        CategoryMeals.routeName: (ctx) => CategoryMeals(),
        MealCategory.routeName: (ctx)=>MealCategory(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
    @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foodie'),
      ),
      body: Center(
        child: Text('Food Application'),
      ),
    );
  }
}
