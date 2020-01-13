import 'package:flutter/material.dart';

import '../dummy-data.dart';
import '../widgets/meal_item.dart';


class CategoryMealsScreen extends StatelessWidget {

  static const routeName = '/categorye-meals';

//  final String categoryId;
//  final String categoryTitle;

//  CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeAtr = ModalRoute.of(context).settings.arguments as Map <String, String>;
    final categoryTitle = routeAtr['title'];
    final categoryId = routeAtr['id'];
    final categoryMeals = DUMMY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold (
      appBar: AppBar (title: Text(categoryTitle),),
      body:ListView.builder(itemBuilder: (ctx, index) {
        return MealItem(
          id: categoryMeals[index].id,
          title: categoryMeals[index].title,
          imageUrl: categoryMeals[index].imageUrl,
          duration: categoryMeals[index].duration,
          complexity: categoryMeals[index].complexity,
          affordability: categoryMeals[index].affordability,
        );
      }, itemCount: categoryMeals.length,),
    );
  }
}
