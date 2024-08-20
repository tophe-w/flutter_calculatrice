import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:flutter_102_calculatrice/models/calculation_historique.dart';
import 'package:flutter_102_calculatrice/pages/home_page.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => CalculationHistory(),
//       child: const MyApp(),
//     ),
//   );
// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculatrice',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 2, 34, 241)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
