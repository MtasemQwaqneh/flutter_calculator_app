import 'package:calculator/controllaer/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/calculator_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: CalculatorScreen(),
      ),
    );
  }
}
