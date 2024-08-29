import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/pages/calculate_page.dart';
import 'package:flutter_102_calculatrice/pages/next_trip_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 251, 251, 251),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Voici les différents exercices demandés par Ramah',
                    style: TextStyle(
                        fontSize: 28, decoration: TextDecoration.underline),
                    textAlign: TextAlign.center,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CalculatePage()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 82, 82, 82),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: const SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1er exercice: Calculatrice,",
                            style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.underline),
                          ),
                          Text(
                            "(Lien sur la BottomBar)",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text(
                              "Le premier Exercice consiste à créer une calculatrice avec les consignes suivantes : Reprendre à 0 une application."),
                          Text(
                              "Sur la première page 4 boutons pour naviguer vers 4 pages:"),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("• 1 page addition"),
                                Text("• 1 page soustraction"),
                                Text("• 1 page division"),
                                Text("• 1 page multiplication"),
                              ],
                            ),
                          ),
                          Text("Sur chaque page:"),
                          Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("• deux champs de saisie"),
                                Text("• un bouton pour vider les champs"),
                                Text("• un bouton pour effectuer l'opération"),
                                Text(
                                    "• un champ texte pour afficher le résultat"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NextTripPage()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 82, 82, 82),
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                          blurRadius: 5.0,
                          spreadRadius: 1.0,
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "2eme exercice: Reproduction de pages",
                            style: TextStyle(
                                fontSize: 18,
                                decoration: TextDecoration.underline),
                          ),
                          const Text(
                            "(Lien Next Trip sur la BottomBar)",
                            style: TextStyle(fontSize: 15),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8),
                            child: Text(
                                "Cet exercice consiste à reproduire le design de trois pages en ajoutant une BottomNavBar pour naviguer vers ces différentes pages."),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'lib/assets/images/image1.png',
                                width: 110,
                                height: 110,
                              ),
                              Image.asset(
                                'lib/assets/images/image2.png',
                                width: 110,
                                height: 110,
                              ),
                              Image.asset(
                                'lib/assets/images/image3.png',
                                width: 110,
                                height: 110,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
