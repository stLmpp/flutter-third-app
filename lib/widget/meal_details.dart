import 'package:flutter/material.dart';
import 'package:third_app/model/meal.dart';

class MealDetails extends StatelessWidget {
  const MealDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments;
    if (meal == null) {
      throw ErrorDescription('Meal is required');
    }
    if (meal is! Meal) {
      throw ErrorDescription('Meal should by of type "Meal"');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.name),
      ),
      body: Center(
        child: Text(meal.name),
      ),
    );
  }

  static const routeName = '/meal-details';
}
