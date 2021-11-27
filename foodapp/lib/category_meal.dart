import 'package:flutter/material.dart';
//import 'package:foodapp/dummy_data.dart';
import './meal_item.dart';
import './dummy_data.dart';
//local
import './meal.dart';
class CategoryMeals extends StatelessWidget{
  static const routeName = '/categorymeals';
  @override 
  // final String categoryTitle;
  // CategoryMeals(this.categoryTitle);
  Widget build(BuildContext context){
    final routeArgs=ModalRoute.of(context)!.settings.arguments as  Map<String,String>;
    final categoryTitle=routeArgs['title'];
    final categoryId=routeArgs['id'];
    final categoryMeals=DUMMY_MEALS.where((meal){
     return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle!,
      style: TextStyle(fontSize: 25,
      color: Colors.greenAccent),),
      
      ),
      body: ListView.builder(itemBuilder: (ctx,index){
        return MealItem(
           id:categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
      },itemCount: categoryMeals.length,),
      
      
    );
       
  }
}