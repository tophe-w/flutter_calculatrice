import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_choose_card.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height - 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30.0), // Arrondi les coins supérieurs
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose your post',
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Share an idea, get feedback from the community, or illustrate your point with a custom post.",
                      style: TextStyle(fontSize: 17.0, fontFamily: 'Roboto'),
                    ),
                    CustomChooseCard(
                      image: Image.asset("lib/assets/images/compose.png"),
                      titre: 'Compose',
                      texte:
                          'Draft a free form post with no restrictions or character limitations.',
                    ),
                    CustomChooseCard(
                      image: Image.asset("lib/assets/images/poll.png"),
                      titre: 'Poll',
                      texte:
                          'Get feedback from the community with a custom mini survey.',
                    ),
                    CustomChooseCard(
                      image: Image.asset("lib/assets/images/chart.png"),
                      titre: 'Chart',
                      texte:
                          "Share insights on a stock's movement, or create a graph comparing multiple stocks.",
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
