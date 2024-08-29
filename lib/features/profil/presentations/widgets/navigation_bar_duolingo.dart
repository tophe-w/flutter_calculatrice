import 'package:flutter/material.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/pages/choose_page.dart';
import 'package:flutter_102_calculatrice/features/profil/presentations/pages/duolingo_page.dart';
import 'package:flutter_102_calculatrice/pages/account_page.dart';
import 'package:flutter_102_calculatrice/pages/animated_page.dart';
import 'package:flutter_102_calculatrice/pages/home_page.dart';
import 'package:flutter_102_calculatrice/pages/next_trip_page.dart';

class NavigationBarDuolingo extends StatefulWidget {
  const NavigationBarDuolingo({super.key});

  @override
  State<NavigationBarDuolingo> createState() => _NavigationBarDuolingoState();
}

class _NavigationBarDuolingoState extends State<NavigationBarDuolingo> {
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
      case 5:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChoosePage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top:
              BorderSide(color: Color.fromARGB(255, 215, 215, 215), width: 2.0),
        ),
      ),
      child: BottomNavigationBar(
        elevation: 30,
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
