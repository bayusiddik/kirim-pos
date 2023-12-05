// ignore_for_file: deprecated_member_use, prefer_final_fields, avoid_print, prefer_const_constructors_in_immutables, sized_box_for_whitespace
// Source : https://www.youtube.com/watch?v=CSa6Ocyog4U
// Menit 36:45

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:haloapp/screen/home_screen.dart';
import 'package:haloapp/screen/hotel_screen.dart';
import 'package:haloapp/screen/place_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  // int _currentTab = 0;

  List<IconData> _icons = [
    Icons.home_rounded,
    Icons.airplanemode_active,
    Icons.location_on,
  ];

  final List<Widget> _screen = [
    HomeScreen(),
    PlaceScreen(),
    HotelScreen(),
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      // onTap: () => Navigator.push(
      //   context,MaterialPageRoute(
      //     builder: (_) => _screen[index]
      //   ),
      // ),
      onTap: () {
        setState(() {
          _selectedIndex = index;  
        });
        print(index.toString());
      },

      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          color: _selectedIndex == index 
          ? Theme.of(context).accentColor 
          : const Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Icon(
          _icons[index],
          size: 40.0,
          color: _selectedIndex == index 
          ? Theme.of(context).primaryColor
          : const Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(
            vertical: 30.0,
          ),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => print('location'),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          FontAwesomeIcons.locationArrow, 
                          size: 11.0,
                        ),
                        SizedBox(width: 5.0,),
                        Text(
                          'Jakarta, Indonesia',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0,),
            const Padding(
              padding: EdgeInsets.only(
                left: 20.0,
                right: 120.0,
              ),
              child: Text(
                'Kirim Kemana Aja Lewat Pos Aja!', 
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map(
                (MapEntry map) => _buildIcon(map.key),
              ).toList(),
            ),
            const SizedBox(
              height: 20.0,
            ),
            _screen[_selectedIndex],
          ],
        ),
      ),
    );
  }
}