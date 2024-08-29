import 'package:flutter/material.dart';

class ProfilPicture extends StatelessWidget {
  const ProfilPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 226, 224, 224),
      child: SizedBox(
          height: 280,
          width: double.infinity,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 100,
                child: Image.asset(
                  'lib/assets/images/image_profil.png',
                  width: 200,
                  height: 220,
                ),
              ),
              const Positioned(
                  top: 50,
                  right: 20,
                  child: Icon(
                    Icons.settings_outlined,
                    size: 35,
                    color: Color.fromARGB(255, 84, 84, 84),
                  )),
            ],
          )),
    );
  }
}
