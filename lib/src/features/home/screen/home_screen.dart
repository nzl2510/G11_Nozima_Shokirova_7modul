import 'package:flutter/material.dart';

import '../../../common/logic/burger_controler.dart';
import '../../../common/widget/burger_card.dart';

class BurgerScreen extends StatelessWidget {
  const BurgerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popular Burgers'),
      ),
      body: Consumer<BurgerController>(
        builder: (context, controller, child) {
          if (controller.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.burgers.isEmpty) {
            return const Center(child: Text('No information available'));
          }

          return ListView.builder(
            itemCount: controller.burgers.length,
            itemBuilder: (context, index) {
              return BurgerCard(burger: controller.burgers[index]);
            },
          );
        },
      ),
    );
  }
}
