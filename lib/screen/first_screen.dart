// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:haloapp/screen/main_screen.dart';
import 'package:haloapp/screen/profile_screen.dart';
import 'package:haloapp/screen/search_screen.dart';



class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _currentTab = 0;
  final List<Widget> _screen = [
    MainScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  void onTappedBar(int value) {
    setState(() {
      _currentTab = value;  
    });
    print(value.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_currentTab],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        currentIndex: _currentTab,
        selectedItemColor: Theme.of(context).primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_accounts_outlined),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}