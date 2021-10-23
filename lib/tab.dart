import 'package:flutter/material.dart';
import 'package:instagram_clone/account.dart';
import 'package:instagram_clone/home.dart';
import 'package:instagram_clone/search.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _selectedIndex = 1;

  List _pages = [
    Home(),
    Search(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.black,
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          ]),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
