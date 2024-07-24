import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_button.dart';

class AdditionPage extends StatefulWidget {
  const AdditionPage({super.key});

  @override
  State<AdditionPage> createState() => _AdditionPageState();
}

class _AdditionPageState extends State<AdditionPage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  int result = 0;

  void addNumbers() {
    setState(() {
      int num1 = int.parse(_controller1.text);
      int num2 = int.parse(_controller2.text);
      result = num1 + num2;
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
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
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
                  '+',
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
              onTap: addNumbers,
              contenuDuBouton: "Additionner",
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
