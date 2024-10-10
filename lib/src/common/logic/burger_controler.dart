import 'package:flutter/material.dart';

import '../model/burger.dart';
import '../service/meal_api_service.dart';

class BurgerController extends ChangeNotifier {
  List<Burger> burgers = [];
  bool isLoading = false;

  final MealApiService _apiService = MealApiService();

  BurgerController() {
    fetchBurgers();
  }

  Future<void> fetchBurgers() async {
    isLoading = true;
    notifyListeners();

    try {
      burgers = await _apiService.fetchBurgers();
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
