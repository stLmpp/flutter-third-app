import 'package:flutter/material.dart';
import 'package:third_app/page/categories.dart';
import 'package:third_app/page/category_meals.dart';
import 'package:third_app/page/settings.dart';
import 'package:third_app/page/tabs/tabs.dart';
import 'package:third_app/widget/meal_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              headline6: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      routes: {
        '/': (_) => const Tabs(),
        CategoryMeals.routeName: (context) => const CategoryMeals(),
        MealDetails.routeName: (context) => const MealDetails(),
        Settings.routeName: (context) => const Settings(),
      },
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (context) => const Categories()),
    );
  }
}
