import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/pages/account_page.dart';
import 'package:flutter_102_calculatrice/pages/animated_page.dart';
import 'package:flutter_102_calculatrice/pages/home_page.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/pages/duolingo_page.dart';

class NextTripPage extends StatefulWidget {
  const NextTripPage({super.key});

  @override
  State<NextTripPage> createState() => _NextTripPageState();
}

class _NextTripPageState extends State<NextTripPage> {
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
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                  ),
                  Container(
                    width: double.infinity,
                    height: 150,
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(239, 243, 246, 1),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Planning a new escape? Let's chat.",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  minimumSize: const Size(double.infinity, 60),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10)),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.travel_explore,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Explore trip ideas with ChatGPT",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 18,
                                    color: Colors.black,
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 290,
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                            "https://www.vrm.ca/wp-content/uploads/Pont_San_Francisco.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Spontaneous summer getaways",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Plan a last-minute road trip, beach escape, or long weekend somewhere close by.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    margin: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(239, 243, 246, 1),
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                            color: Color.fromARGB(255, 151, 150, 150),
                            width: 0.3)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0),
                          ),
                          child: Image.asset(
                            "lib/assets/images/piscine.jpg",
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 200,
                          ),
                        ),
                        Positioned(
                          bottom: 115,
                          left: 15,
                          child: SizedBox(
                            height: 18,
                            width: 23,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                padding: EdgeInsets.zero,
                              ),
                              child: Text(
                                'Ad',
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            const Spacer(),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    "https://www.visitgreaterpalmsprings.com/includes/public/assets/shared/logo-teal.png",
                                    width: 100,
                                    height: 100,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: FloatingActionButton(
              onPressed: () {
                // Action du bouton
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              backgroundColor: Colors.white,
              child: Icon(
                Icons.chat,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        onTap: (index) => setCurrentPage(index),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.cases_outlined), label: "Trips"),
          BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('lib/assets/images/duolingo.png'),
                width: 30,
                height: 30,
              ),
              label: 'Duolingo'),
          BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts_outlined), label: "Account")
        ],
      ),
    );
  }
}
