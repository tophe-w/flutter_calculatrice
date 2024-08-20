import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_card.dart';
import 'package:flutter_102_calculatrice/common/widgets/custom_overview.dart';
import 'package:flutter_102_calculatrice/pages/account_page.dart';
import 'package:flutter_102_calculatrice/pages/animated_page.dart';
import 'package:flutter_102_calculatrice/pages/home_page.dart';
import 'package:flutter_102_calculatrice/pages/next_trip_page.dart';

class DuolingoPage extends StatefulWidget {
  const DuolingoPage({super.key});

  @override
  State<DuolingoPage> createState() => _DuolingoPageState();
}

class _DuolingoPageState extends State<DuolingoPage> {
  int _currentPage = 0;

  setCurrentPage(int index) {
    setState(() {
      _currentPage = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NextTripPage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AnimatedPage()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const DuolingoPage()),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AccountPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: const Color.fromARGB(255, 226, 224, 224),
              child: SizedBox(
                  height: 280,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 120,
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
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'Alex',
                style: TextStyle(
                  color: Color.fromARGB(255, 54, 54, 54),
                  fontSize: 28,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  const Text(
                    '@Alex566600',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 146, 146, 146),
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
                      color: Color.fromARGB(255, 146, 146, 146),
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
                        color: Color.fromARGB(255, 146, 146, 146),
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto'),
                  )
                ],
              ),
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Row(
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
                                      color: Color.fromARGB(255, 201, 201, 201),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Courses',
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 18,
                              color: Color.fromARGB(255, 146, 146, 146),
                              fontWeight: FontWeight.w600,
                            ),
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
                            color: Color.fromARGB(255, 146, 146, 146),
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
                            color: Color.fromARGB(255, 146, 146, 146),
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
                    child: SizedBox(
                        width: 350,
                        height: 55,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: const Color.fromARGB(255, 214, 214, 214),
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
                                  color: Color.fromARGB(255, 28, 178, 247),
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
                                color: const Color.fromARGB(255, 214, 214, 214),
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
            const Padding(
              padding: EdgeInsets.only(left: 15.0, top: 30, bottom: 15),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    avatar: Image.asset('lib/assets/images/avatarF6.png'),
                    name: 'Jane',
                    texte: 'One of your contacts',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    avatar: Image.asset('lib/assets/images/licorne1.png'),
                    name: 'Alice',
                    texte: 'Your colleague from work',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    avatar: Image.asset('lib/assets/images/chat.png'),
                    name: 'Bob',
                    texte: 'Friend from the gym',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    avatar: Image.asset('lib/assets/images/lapin.png'),
                    name: 'Charlie',
                    texte: 'Classmate from college',
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                      avatar: Image.asset('lib/assets/images/avatarF15.png'),
                      name: 'Diana',
                      texte: 'Neighbor from your building'),
                  const SizedBox(
                    width: 10,
                  ),
                  CustomCard(
                    avatar: Image.asset('lib/assets/images/avatarH14.png'),
                    name: 'Edward',
                    texte: 'Business partner',
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: const Color.fromARGB(255, 28, 178, 247),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'lib/assets/images/user1.png',
                              width: 90,
                              height: 90,
                            ),
                            const SizedBox(
                              width: 260,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Complete your profile',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Roboto",
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Complete a few missing steps to have a great profile',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Roboto",
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 137, 207, 248),
                                    spreadRadius: -1,
                                    blurRadius: 2,
                                    offset: Offset(0, 3),
                                  ),
                                ]),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.only(
                                        right: 8, left: 8),
                                    backgroundColor: Colors.white,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                child: const Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 28, 178, 247),
                                      fontFamily: "Roboto",
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Positioned(
                    top: 20,
                    right: 20,
                    child: InkWell(
                      child: Icon(
                        Icons.close,
                        color: Color.fromARGB(205, 255, 255, 255),
                        size: 30,
                      ),
                    )),
              ]),
            ),
            const SizedBox(
              height: 5,
            ),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(children: [
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomOverview(
                          icon: Icons.abc,
                          name: '4',
                          texte: 'Day streak',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomOverview(
                          icon: Icons.abc,
                          name: '4',
                          texte: 'Day streak',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomOverview(
                          icon: Icons.abc,
                          name: '4',
                          texte: 'Day streak',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomOverview(
                          icon: Icons.abc,
                          name: '4',
                          texte: 'Day streak',
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                    top: 105,
                    left: 158,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.circular(5),
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
            )
          ], //Limite des childrens du body
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        currentIndex: _currentPage,
        onTap: (index) => setCurrentPage(index),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_home.png'),
                width: 50,
                height: 50,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_bouche.png'),
                width: 50,
                height: 50,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_haltere.png'),
                width: 50,
                height: 50,
              ),
              label: "Trips"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_shield.png'),
                width: 50,
                height: 50,
              ),
              label: 'nothing'),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_tete.png'),
                width: 50,
                height: 50,
              ),
              label: "Account"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo_chat.png'),
                width: 50,
                height: 50,
              ),
              label: "Chat")
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}
