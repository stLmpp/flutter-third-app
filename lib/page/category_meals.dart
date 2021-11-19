import 'package:flutter/material.dart';
import 'package:third_app/mock/meals_mock.dart';
import 'package:third_app/model/category.dart';
import 'package:third_app/model/meal.dart';
import 'package:third_app/widget/meal_item.dart';

class CategoryMeals extends StatefulWidget {
  const CategoryMeals({Key? key}) : super(key: key);

  @override
  State<CategoryMeals> createState() => _CategoryMealsState();

  static const routeName = '/category-meals';
}

class _CategoryMealsState extends State<CategoryMeals> {
  final List<Meal> _meals = mealsMock;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments;
    if (category == null) {
      throw ErrorDescription('Category not found in the route settings');
    }
    if (category is! Category) {
      throw ErrorDescription('Argument is not of type "Category"');
    }
    final meals = _meals.where((meal) => meal.idCategories.contains(category.id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          final meal = meals[index];
          return MealItem(
            meal: meal,
            remove: () {
              setState(() {
                _meals.removeWhere((mealRemove) => mealRemove.id == meal.id);
              });
            },
          );
        },
      ),
    );
  }
}
