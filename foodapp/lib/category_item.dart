import 'package:flutter/material.dart';


import './category_meal.dart';
import './category_food.dart';

 class CategoryItem extends StatelessWidget{
   final String id;
   
   final String title;
    //final Color color;
   
   CategoryItem(this.title,this.id);
   //void selectcategory(BuildContext ctx){
     //Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
       //return CategoryMeals(title);

    // },),);
    void selectcategory(BuildContext ctx){
      Navigator.of(ctx).pushNamed(CategoryMeals.routeName,arguments: {'title':title,'id':id});
      
    }

   

   
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectcategory(context),
      child: SafeArea(minimum: const EdgeInsets.all(12.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Text(title,
          style: TextStyle(fontSize: 30,),
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(155, 80, 20, 0.7),
                Colors.pinkAccent,
                
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
 }