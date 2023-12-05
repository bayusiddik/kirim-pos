// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:haloapp/model/hotel_model.dart';

class WidgetKeterangan extends StatefulWidget {
  final Hotel hotel;
  WidgetKeterangan({Key? key, required this.hotel}) : super(key: key);

  @override
  State<WidgetKeterangan> createState() => _WidgetKeteranganState();
}

class _WidgetKeteranganState extends State<WidgetKeterangan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 20.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Text(
                widget.hotel.desc[0],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10.0,),
              Text(
                widget.hotel.desc[1],
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}