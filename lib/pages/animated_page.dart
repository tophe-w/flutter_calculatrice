import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({super.key});

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animation = Tween(begin: -1.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Et au delà !'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/images/nuit.jpg"),
                fit: BoxFit
                    .cover, // Couvre toute la zone du widget, vous pouvez ajuster cela selon vos besoins
              ),
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height *
                    (_animation.value + 1) /
                    2 -
                10, // Ajustement pour centrer l'image
            left: MediaQuery.of(context).size.width / 2 -
                50, // Centrer l'image horizontalement
            child: Image.asset(
              'lib/assets/images/fusee1.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
