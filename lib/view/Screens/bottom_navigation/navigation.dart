import 'package:flutter/material.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/help_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/main_screen.dart';
import 'package:freedomcars/view/Screens/bottom_navigation/request.dart';
import 'package:freedomcars/view/Screens/profile/profile.dart';
import 'package:freedomcars/resources/utils.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int currentindex = 0;
  var screens = [
    MainScreen(),
    Request(),
    HelpScreen(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentindex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: (_index) {
            Utils.removeFocus(context);
            setState(() {
              currentindex = _index;
            });
          },
          // elevation: 10,
          items: const [
            BottomNavigationBarItem(
              // activeIcon: Prankpayment(),
              label: 'Home',
              // backgroundColor: Colors.red,
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              // activeIcon: Profile(),
              label: 'Request',
              // backgroundColor: Colors.amber,
              icon: Icon(Icons.add_box_outlined),
            ),
            BottomNavigationBarItem(
              // activeIcon: ListView(),
              label: 'Help',
              // backgroundColor: Colors.cyanAccent,
              icon: Icon(
                Icons.help_center_outlined,
              ),
            ),
            BottomNavigationBarItem(
              // activeIcon: Prankpayment(),
              label: 'Profile',
              // backgroundColor: Colors.red,
              icon: Icon(Icons.person),
            ),
          ],
          currentIndex: currentindex,
        ));
  }
}
