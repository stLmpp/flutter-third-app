import 'package:flutter/material.dart';
import 'package:third_app/mock/categories_mock.dart';
import 'package:third_app/widget/category.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: categoriesMock
            .map(
              (category) => CategoryItem(
                title: category.title,
                color: category.color,
                key: ValueKey(category.id),
              ),
            )
            .toList(),
      ),
    );
  }
}
