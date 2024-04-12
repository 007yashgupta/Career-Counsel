

import 'package:flutter/material.dart';
import '../screens/profile_screen.dart';
import '../screens/counselors_screen.dart';
import '../screens/home_screen.dart';


class NavBarRoots extends StatefulWidget {

  static const routeName = '/navbar-roots';

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {

  int _selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    //home screen
    ProfileScreen(),
    //messages screen
    CounselorsScreen(),
    //profile screen
    Container(),
    //settings screen

    




  ];



  @override

  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      
      backgroundColor: Colors.white,
      body : _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: theme.primaryTextTheme.titleSmall!.color,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home'),
              BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'),
              BottomNavigationBarItem(
              icon: Icon(Icons.help),
              label: 'Guidance'),
              BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'),
          ],



        ),
      ),


    );

  }
}

