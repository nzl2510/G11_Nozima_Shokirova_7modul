import 'package:flutter/material.dart';
import '../model/burger.dart';

class BurgerCard extends StatelessWidget {
  final Burger burger;

  const BurgerCard({super.key, required this.burger});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              burger.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(burger.restaurant),
            const SizedBox(height: 8),
            Text('\$${burger.price.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}


