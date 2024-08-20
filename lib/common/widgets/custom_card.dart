import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomCard extends StatelessWidget {
  final Image avatar;
  final String name;
  final String texte;
  final double iconSize;
  final double width;
  final double height;
  final ElevatedButton button;

  const CustomCard({
    super.key,
    required this.avatar,
    required this.name,
    required this.texte,
    this.iconSize = 50,
    this.width = 150,
    this.height = 220,
    this.button = const ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(2),
          shadowColor: WidgetStatePropertyAll(Color.fromARGB(255, 2, 117, 170)),
          fixedSize: WidgetStatePropertyAll(Size(double.infinity, 30)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)))),
          backgroundColor: WidgetStatePropertyAll(
            Color.fromARGB(255, 28, 178, 247),
          ),
        ),
        onPressed: null,
        child: Padding(
          padding: EdgeInsets.all(9.0),
          child: Text(
            'FOLLOW',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Roboto",
                fontSize: 15,
                fontWeight: FontWeight.bold),
          ),
        )),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 202, 202, 202)),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Stack(children: [
        Positioned(
            top: 5,
            right: 5,
            child: InkWell(
              child: Icon(Icons.close),
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5),
              SizedBox(width: 50, height: 50, child: avatar),
              SizedBox(
                height: 5,
              ),
              Text(
                name,
                style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(texte,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    color: Color.fromARGB(255, 146, 146, 146),
                  )),
              button,
            ],
          ),
        ),
      ]),
    );
  }
}
