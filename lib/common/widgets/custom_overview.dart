import 'package:flutter/material.dart';

class CustomOverview extends StatelessWidget {
  final Image image;
  final String name;
  final String texte;
  final double iconSize;

  const CustomOverview({
    super.key,
    required this.image,
    required this.name,
    required this.texte,
    this.iconSize = 26.0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 30, height: 30, child: image),
                SizedBox(width: 2),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 33.0),
                  child: Text(
                    texte,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        color: Color.fromARGB(255, 146, 146, 146),
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
