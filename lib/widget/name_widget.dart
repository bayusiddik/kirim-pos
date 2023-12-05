// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:haloapp/model/hotel_model.dart';

class WidgetNama extends StatefulWidget {
  final Hotel hotel;
  WidgetNama({Key? key, required this.hotel}) : super(key: key);

  @override
  State<WidgetNama> createState() => _WidgetNamaState();
}

class _WidgetNamaState extends State<WidgetNama> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.hotel.name,
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  Text(
                    widget.hotel.address,
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    '${widget.hotel.price}',
                    style: TextStyle(
                      fontSize: 17.0,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 255, 203, 0),
                  size: 30.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  '${widget.hotel.rating}',
                  style: TextStyle(
                    fontSize: 18.0,
                  )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}