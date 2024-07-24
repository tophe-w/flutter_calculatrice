import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_button.dart';
import 'package:flutter_102_calculatrice/pages/addition_page.dart';
import 'package:flutter_102_calculatrice/pages/division_page.dart';
import 'package:flutter_102_calculatrice/pages/multiplication_page.dart';
import 'package:flutter_102_calculatrice/pages/soustraction_page.dart';

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
      home: const MyHomePage(title: 'Flutter Calculatrice'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Addition', style: TextStyle(fontSize: 24)),
                    const SizedBox(height: 10),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AdditionPage()),
                        );
                      },
                      contenuDuBouton: '+',
                      iconSize: 40,
                    ),
                  ],
                ),
                const SizedBox(width: 80),
                Column(
                  children: [
                    const Text('Soustraction', style: TextStyle(fontSize: 24)),
                    const SizedBox(height: 10),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SoustractionPage()),
                        );
                      },
                      contenuDuBouton: '-',
                      iconSize: 50,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
            Image.asset('lib/assets/images/image_calculatrice1.png',
                width: 200, height: 200),
            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text('Division', style: TextStyle(fontSize: 24)),
                    const SizedBox(height: 10),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DivisionPage()),
                        );
                      },
                      contenuDuBouton: '/',
                    ),
                  ],
                ),
                const SizedBox(width: 80),
                Column(
                  children: [
                    const Text('Multiplication',
                        style: TextStyle(fontSize: 24)),
                    const SizedBox(height: 10),
                    CustomButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MultiplicationPage()),
                        );
                      },
                      contenuDuBouton: 'X',
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
