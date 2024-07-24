import 'package:flutter/material.dart';

class MultiplicationPage extends StatefulWidget {
  const MultiplicationPage({super.key});

  @override
  State<MultiplicationPage> createState() => _MultiplicationPageState();
}

class _MultiplicationPageState extends State<MultiplicationPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Multiplication Page'),
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
