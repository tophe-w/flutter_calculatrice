import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_button.dart';
import 'package:flutter_102_calculatrice/pages/addition_page.dart';
import 'package:flutter_102_calculatrice/pages/animated_page.dart';
import 'package:flutter_102_calculatrice/pages/division_page.dart';
import 'package:flutter_102_calculatrice/pages/multiplication_page.dart';
import 'package:flutter_102_calculatrice/pages/soustraction_page.dart';

import 'historique_page.dart';

class CalculatePage extends StatefulWidget {
  const CalculatePage({super.key});

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120.0,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Exercice Calculatrice"),
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
                              builder: (context) => const AdditionPage()),
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
                                builder: (context) =>
                                    const SoustractionPage()));
                      },
                      contenuDuBouton: '-',
                      iconSize: 60,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AnimatedPage()),
                );
              },
              child: Image.asset('lib/assets/images/image_calculatrice.png',
                  width: 230, height: 230),
            ),
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
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HistoriquePage()),
                );
              },
              child: const Text(
                'Historique',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
