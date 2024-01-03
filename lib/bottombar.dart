import 'package:blue_crown/Frndssss.dart';
import 'package:blue_crown/HOME.dart';
import 'package:blue_crown/List.dart';
import 'package:blue_crown/MineOffers.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Bar Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomBarPage(),
    );
  }
}

class BottomBarPage extends StatefulWidget {
  @override
  _BottomBarPageState createState() => _BottomBarPageState();
}

class _BottomBarPageState extends State<BottomBarPage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    // Replace these with your own pages/screens
    Listtt(),
    Text('dsc'),
    Home(),
    Friends(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/List.png',
              height: 24,
            ),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Clubs.png',
              height: 24,
            ),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/FAB.png',
              height: 48,
            ),
            label: 'Tours',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Friends.png',
              height: 24,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/images/Menu.png',
              height: 24,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        // Change the selected item color here
        unselectedItemColor: Colors.black,
        // Change the unselected item color here
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
