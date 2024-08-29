import 'package:flutter/material.dart';

class CustomChooseCard extends StatelessWidget {
  final Image image;
  final String titre;
  final String texte;

  const CustomChooseCard({
    super.key,
    required this.image,
    required this.titre,
    required this.texte,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 40, height: 40, child: image),
                SizedBox(width: 2),
                Text(
                  titre,
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
                Text(
                  texte,
                  style: TextStyle(fontFamily: 'Roboto', fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
