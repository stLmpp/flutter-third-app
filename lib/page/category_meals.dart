import 'package:flutter/material.dart';
import 'package:third_app/model/category.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments;
    if (category == null) {
      throw ErrorDescription('Category not found in the route settings');
    }
    if (category is! Category) {
      throw ErrorDescription('Argument is not of type "Category"');
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: const Center(
        child: Text('Recipes'),
      ),
    );
  }
}
