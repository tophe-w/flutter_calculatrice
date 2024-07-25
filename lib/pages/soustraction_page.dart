import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_button.dart';
import 'package:flutter_102_calculatrice/config/calculs_globals.dart';
import 'package:provider/provider.dart';

import '../models/calculation_historique.dart';

class SoustractionPage extends StatefulWidget {
  const SoustractionPage({super.key});

  @override
  State<SoustractionPage> createState() => _SoustractionPageState();
}

class _SoustractionPageState extends State<SoustractionPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  int result = 0;

  void subtractionNumbers() {
    setState(() {
      int num1 = int.parse(_controller1.text);
      int num2 = int.parse(_controller2.text);
      result = num1 - num2;

      // final history = Provider.of<CalculationHistory>(context, listen: false);
      // history.addSoustraction("$num1 - $num2 = $result");

      soustractionHistory.add("$num1 - $num2 = $result");
    });
  }

  void reset() {
    setState(() {
      _controller1.clear();
      _controller2.clear();
      result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Soustraction Page'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(26.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('lib/assets/images/image_calculatrice3.png',
                width: 140, height: 140),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller1,
                    decoration: const InputDecoration(
                        labelText: "Nbr 1",
                        labelStyle: TextStyle(fontSize: 30),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder()),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: const TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                const Text(
                  '-',
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    controller: _controller2,
                    decoration: const InputDecoration(
                      labelText: "Nbr 2",
                      labelStyle: TextStyle(fontSize: 30),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                    ),
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            CustomButton(
              onTap: subtractionNumbers,
              contenuDuBouton: "Soustraire",
              width: 250,
              height: 60,
            ),
            InkWell(
              onTap: () {
                reset();
              },
              child: const Text(
                "Reset",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 50),
            Text(
              "Résultat: $result",
              style: const TextStyle(fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}
