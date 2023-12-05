// ignore_for_file: avoid_print, prefer_const_constructors
// Mirror : https://www.youtube.com/watch?v=f4eo8MFZebY
// Menit 19:18

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:haloapp/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'Flutter Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 240, 96, 34),
        // ignore: deprecated_member_use
        accentColor: Color.fromARGB(255, 255, 233, 223),
        scaffoldBackgroundColor: const Color(0xFFF3F5F7),
      ),
      home: SplashScreen(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

