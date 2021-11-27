import 'package:flutter/material.dart';
import './dummy_data.dart';
import 'category_item.dart';
//import './localdata/dummy_data.dart';
//local
class CategoriesFood extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FoodApp',
        style: TextStyle(fontSize: 30,
        color: Colors.deepPurple,),),
      ),
      body: GridView(
        children: DUMMY_CATEGORIES
            .map(
              (catData) => 
              CategoryItem(
                    catData.title,
                    catData.id
                  ),
            )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
    
    
}