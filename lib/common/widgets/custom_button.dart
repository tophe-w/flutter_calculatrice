import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Function onTap;
  final String contenuDuBouton;
  final double iconSize;
  final double width;
  final double height;

  const CustomButton({
    super.key,
     required this.onTap,
    required this.contenuDuBouton,
    this.iconSize = 30,
    this.width = 100,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
          child: Text(
          contenuDuBouton,
          style: TextStyle(fontSize: iconSize),
        ),
      ),
    );
  }
}
