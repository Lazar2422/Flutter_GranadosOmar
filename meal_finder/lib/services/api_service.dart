import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/meal.dart';

class ApiService {

  // Obtener comidas aleatorias
  static Future<List<Meal>> getRandomMeals(int count) async {
    List<Meal> meals = [];
    for (int i = 0; i < count; i++) {
      final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/random.php'));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        meals.add(Meal.fromJson(data['meals'][0]));
      }
    }
    return meals;
  }

  // Buscar comidas por nombre
  static Future<List<Meal>> searchMeals(String query) async {
    final response = await http.get(Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s=$query'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['meals'] == null) return [];
      return (data['meals'] as List).map((m) => Meal.fromJson(m)).toList();
    } else {
      throw Exception('Error al buscar comidas');
    }
  }
}
