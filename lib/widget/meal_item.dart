import 'package:flutter/material.dart';
import 'package:third_app/model/meal.dart';
import 'package:third_app/model/meal_affordability_enum.dart';
import 'package:third_app/model/meal_complexity_enum.dart';
import 'package:third_app/widget/meal_details.dart';

class MealItem extends StatelessWidget {
  const MealItem({
    Key? key,
    required this.meal,
  }) : super(key: key);

  final Meal meal;

  String get _affordability {
    switch (meal.affordability) {
      case MealAffordabilityEnum.affordable:
        return 'Affordable';
      case MealAffordabilityEnum.pricey:
        return 'Pricey';
      case MealAffordabilityEnum.luxurious:
        return 'Luxurious';
      default:
        return 'Unknown';
    }
  }

  String get _complexity {
    switch (meal.complexity) {
      case MealComplexityEnum.simple:
        return 'Simple';
      case MealComplexityEnum.challenging:
        return 'Challenging';
      case MealComplexityEnum.hard:
        return 'Hard';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(MealDetails.routeName, arguments: meal);
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      meal.imageUrl,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        meal.name,
                        style: const TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.schedule),
                        const SizedBox(width: 6),
                        Text('${meal.duration} Minutes'),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.work),
                        const SizedBox(width: 6),
                        Text(_complexity),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.attach_money),
                        const SizedBox(width: 6),
                        Text(_affordability),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
