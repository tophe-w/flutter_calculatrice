import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_overview.dart';
import 'package:flutter_102_calculatrice/config/constant.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/pages/form_duoligo.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/widgets/complete_your_profile.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/widgets/friend_suggestions.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/widgets/navigation_bar_duolingo.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/widgets/profil_picture.dart';

class DuolingoPage extends StatefulWidget {
  const DuolingoPage({super.key});

  @override
  State<DuolingoPage> createState() => _DuolingoPageState();
}

class _DuolingoPageState extends State<DuolingoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfilPicture(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Alex',
                    style: TextStyle(
                      color: Color.fromARGB(255, 54, 54, 54),
                      fontSize: 28,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                        '@Alex566600',
                        style: TextStyle(
                            fontSize: 18,
                            color: TextColorConstant.textColorGrey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          color: TextColorConstant.textColorGrey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Joined July 2024',
                        style: TextStyle(
                            fontSize: 18,
                            color: TextColorConstant.textColorGrey,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto'),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 130,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'lib/assets/images/us.png',
                                    width: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 38,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 219, 219, 219),
                                            width: 2),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: const Padding(
                                      padding: EdgeInsets.only(top: 2),
                                      child: Text(
                                        '+3',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Color.fromARGB(
                                              255, 201, 201, 201),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Courses',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  color: TextColorConstant.textColorGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 60,
                        color: const Color.fromARGB(255, 204, 204, 204),
                      ),
                      const SizedBox(
                        height: 60,
                        width: 130,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '2',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 23,
                                  color: Color.fromARGB(255, 16, 16, 16),
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                'Following',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  color: TextColorConstant.textColorGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 60,
                        color: const Color.fromARGB(255, 204, 204, 204),
                      ),
                      const SizedBox(
                        height: 60,
                        width: 130,
                        child: Padding(
                          padding: EdgeInsets.only(left: 25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 23,
                                  color: Color.fromARGB(255, 16, 16, 16),
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'Followers',
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontSize: 18,
                                  color: TextColorConstant.textColorGrey,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>  FormDuoligo()),
                            );
                          },
                          child: SizedBox(
                              width: 300,
                              height: 55,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.person_add,
                                      size: 32,
                                      color: Color.fromARGB(255, 28, 178, 247),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      'ADD FRIENDS',
                                      style: TextStyle(
                                        fontFamily: "Roboto",
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                        color:
                                            Color.fromARGB(255, 28, 178, 247),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                        InkWell(
                          child: SizedBox(
                              width: 55,
                              height: 55,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      width: 2,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 1),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Icon(
                                  Icons.upload_outlined,
                                  color: Color.fromARGB(255, 28, 178, 247),
                                  size: 45,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Friend suggestions',
                      style: TextStyle(
                        color: Color.fromARGB(255, 54, 54, 54),
                        fontSize: 30,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  FriendSuggestions(),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Overview',
                      style: TextStyle(
                        color: Color.fromARGB(255, 54, 54, 54),
                        fontSize: 30,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  CompleteYourProfile(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: CustomOverview(
                                  image: Image.asset(
                                      'lib/assets/images/duolingo_flamme.png'),
                                  name: '4',
                                  texte: 'Day streak',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: CustomOverview(
                                  image: Image.asset(
                                      'lib/assets/images/duolingo_eclair.png'),
                                  name: '1817',
                                  texte: 'Total xp',
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: CustomOverview(
                                  image: Image.asset(
                                      'lib/assets/images/duolingo_plaque.png'),
                                  name: 'Silver',
                                  texte: 'League',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: CustomOverview(
                                  image: Image.asset(
                                      'lib/assets/images/duolingo_medaille.png'),
                                  name: '1',
                                  texte: 'Top 3 finishes',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                          top: 80,
                          right: MediaQuery.sizeOf(context).width / 2 - 10,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Text(
                                  'WEEK 1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold),
                                ),
                              ))),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Achievements',
                          style: TextStyle(
                            color: Color.fromARGB(255, 54, 54, 54),
                            fontSize: 30,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 17.0),
                        child: Text(
                          'VIEW ALL',
                          style: TextStyle(
                            color: Color.fromARGB(255, 28, 178, 247),
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'lib/assets/images/duolingo_oiseau.png',
                            width: 120,
                          ),
                          Container(
                            width: 2,
                            height: 180,
                            color: const Color.fromARGB(255, 204, 204, 204),
                          ),
                          Image.asset(
                            'lib/assets/images/duolingo_fakir.png',
                            width: 120,
                          ),
                          Container(
                            width: 2,
                            height: 180,
                            color: const Color.fromARGB(255, 204, 204, 204),
                          ),
                          Image.asset(
                            'lib/assets/images/duolingo_muscle.png',
                            width: 120,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ], //Limite des childrens du body
        ),
      ),
      bottomNavigationBar: NavigationBarDuolingo(),
    );
  }
}
