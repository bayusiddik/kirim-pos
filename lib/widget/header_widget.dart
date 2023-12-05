
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).primaryColor,
            Color(0xFFF2861E),
          ],
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(100.0),
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
    );
  }
}