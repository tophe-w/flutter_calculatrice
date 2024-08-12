import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/config/calculs_globals.dart';
// import 'package:flutter_102_calculatrice/models/calculation_historique.dart';
// import 'package:provider/provider.dart';

class HistoriquePage extends StatelessWidget {
  const HistoriquePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final history = Provider.of<CalculationHistory>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Historique'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSection('Addition', additionHistory),
            _buildSection('Soustraction', soustractionHistory),
            _buildSection('Multiplication', multiplicationHistory),
            _buildSection('Division', divisionHistory),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<String> items) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics:
                const NeverScrollableScrollPhysics(), // Ajout pour éviter le conflit de défilement
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}
