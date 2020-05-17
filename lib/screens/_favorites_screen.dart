import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class _FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  _FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('You have not favorites yet - start adding dome!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeals[index].id,
            title: favoriteMeals[index].title,
            imageUrl: favoriteMeals[index].imageUrl,
            affordability: favoriteMeals[index].affordability,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
          );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
