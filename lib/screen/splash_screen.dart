// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:haloapp/screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(milliseconds: 3000), () {
        Navigator.push(
          context, MaterialPageRoute(
            builder: (_) => LoginScreen()
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor,
              Color(0xFFF2861E),
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
        ),
        child: Center(
          child: ClipRRect(
            child: Image(
              height: 180.0,
              width: 180.0,
              image: AssetImage('assets/images/logo.png'), 
            ),
          ),
        ),
      ),
    );
  }
}