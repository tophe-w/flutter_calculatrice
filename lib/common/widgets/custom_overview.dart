import 'package:flutter/material.dart';

class CustomOverview extends StatelessWidget {
  final IconData icon;
  final String name;
  final String texte;
  final double iconSize;
  final double width;
  final double height;

  const CustomOverview({
    super.key,
    required this.icon,
    required this.name,
    required this.texte,
    this.iconSize = 24.0,
    this.width = 200,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 8),
              Text(name),
            ],
          ),
          Text(texte)
        ],
      ),
    );
  }
}
