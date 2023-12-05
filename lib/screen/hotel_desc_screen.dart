// https://www.youtube.com/watch?v=mq4OZNk2Iyk&t=625s

// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable, prefer_final_fields, unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:haloapp/model/hotel_model.dart';
import 'package:haloapp/widget/desc_widget.dart';
import 'package:haloapp/widget/icon_widget.dart';
import 'package:haloapp/widget/name_widget.dart';


class DetailHotelScreen extends StatefulWidget {
  final Hotel hotel;
  DetailHotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  State<DetailHotelScreen> createState() => _DetailHotelScreenState();
}

class _DetailHotelScreenState extends State<DetailHotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 240.0,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: widget.hotel.name, 
                  child: Material(
                    child: InkWell(
                      child: Image.asset(
                        widget.hotel.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 40.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context), 
                      icon: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.black38,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                      iconSize: 30.0,
                      color: Colors.white,
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () => print('Search'), 
                          icon: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.black38,
                            ),
                            child: Icon(
                              Icons.search,
                            ),
                          ),
                          iconSize: 30.0,
                          color: Colors.white,
                        ),
                        IconButton(
                          onPressed: () => print('Sort'), 
                          icon: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              color: Colors.black38,
                            ),
                            child: Icon(
                              Icons.sort_outlined,
                            ),
                          ),
                          iconSize: 30.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          WidgetNama(hotel: widget.hotel),
          WidgetIcon(),
          WidgetKeterangan(hotel: widget.hotel),
        ],
      ),
    );
  }
}