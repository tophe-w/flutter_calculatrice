import 'package:flutter/material.dart';

class SoustractionPage extends StatefulWidget {
  const SoustractionPage({super.key});

  @override
  State<SoustractionPage> createState() => _SoustractionPageState();
}

class _SoustractionPageState extends State<SoustractionPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Soustraction Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Retourner à la page précédente
            Navigator.pop(context);
          },
          child: const Text('Back to Main Page'),
        ),
      ),
    );
  }
}
