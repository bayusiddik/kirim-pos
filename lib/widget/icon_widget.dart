// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class WidgetIcon extends StatelessWidget {
  WidgetIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconText(icon: Icons.call, text: 'Telepon'),
            IconText(icon: Icons.message, text: 'Pesan'),
            IconText(icon: Icons.location_on, text: 'Lokasi'),
          ],
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  IconText({
    Key? key, 
    required this.icon, 
    required this.text}) 
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 50.0,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }
}