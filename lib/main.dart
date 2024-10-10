import 'package:flutter/material.dart';
import 'package:g11_nozima_shokirova_7modul/src/common/logic/burger_controler.dart';
import 'package:g11_nozima_shokirova_7modul/src/features/home/screen/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BurgerController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burger App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BurgerScreen(),
    );
  }
}
