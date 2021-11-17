import 'package:third_app/model/meal_affordability_enum.dart';
import 'package:third_app/model/meal_complexity_enum.dart';

class Meal {
  Meal({
    required this.id,
    required this.idCategories,
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.isGlutenFree,
    required this.isLactoseFree,
    required this.isVegan,
    required this.isVegetarian,
  });

  final String id;
  final List<String> idCategories;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final MealComplexityEnum complexity;
  final MealAffordabilityEnum affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
}
