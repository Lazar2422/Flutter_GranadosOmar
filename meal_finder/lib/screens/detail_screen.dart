import 'package:flutter/material.dart';
import '../models/meal.dart';

class DetailScreen extends StatelessWidget {
  final Meal meal;
  final Map<String, dynamic> mealData;

  const DetailScreen({super.key, required this.meal, required this.mealData});

  @override
  Widget build(BuildContext context) {
    List<String> ingredients = [];
    for (int i = 1; i <= 20; i++) {
      final ing = mealData['strIngredient$i'];
      final measure = mealData['strMeasure$i'];
      if (ing != null && ing.isNotEmpty) {
        ingredients.add("$ing - $measure");
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text(meal.name)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(meal.thumbnail),
            const SizedBox(height: 16),
            Text('Ingredientes',style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            ...ingredients.map((e) => Text(e)),
            const SizedBox(height: 16),
            Text('Instrucciones', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            Text(mealData['strInstructions'] ?? ''),
          ],
        ),
      ),
    );
  }
}
