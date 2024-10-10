import 'dart:convert';

import '../model/burger.dart';

class MealApiService {
  final String baseUrl = 'https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef';

  Future<List<Burger>> fetchBurgers(dynamic http) async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data['meals'] != null) {
        return (data['meals'] as List)
            .map((json) => Burger.fromJson(json))
            .toList();
      } else {
        return [];
      }
    } else {
      throw Exception('Failed to load burgers');
    }
  }
}

