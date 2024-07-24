import 'package:flutter/material.dart';

class DivisionPage extends StatefulWidget {
  const DivisionPage({super.key});

  @override
  State<DivisionPage> createState() => _DivisionPageState();
}

class _DivisionPageState extends State<DivisionPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: const Text('Division Page'),
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
