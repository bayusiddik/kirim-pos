// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print, deprecated_member_use, prefer_final_fields
// https://www.youtube.com/watch?v=9PWaRfYZ6Lg&t=84s

import 'package:flutter/material.dart';
import 'package:haloapp/model/destination_model.dart';
import 'package:haloapp/screen/destination_screen.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List<Destination> _foundDestinations = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _foundDestinations = destinations;
    });
  }

  onSearch(String search) {
    setState(() {
      _foundDestinations = destinations.where(
        (destination) => destination.city.toLowerCase().contains(search)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.0,),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Text(
                'Pencarian', 
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Container(
                height: 38.0,
                child: TextField(
                  onChanged: (value) => onSearch(value),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(255, 218, 218, 218),
                    contentPadding: EdgeInsets.all(0.0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Cari Tujuan",
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(
                  top: 10.0,
                  bottom: 15.0,
                ),
                itemCount: _foundDestinations.length,
                itemBuilder: (BuildContext context, int index) {
                  return destinationComponent(destination: _foundDestinations[index]);
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  destinationComponent({required Destination destination}) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20, 5.0),
          height: 170.0,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 1.0),
                blurRadius: 1.0,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(105.0, 35.0, 20.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.city,
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                Text(
                  destination.country,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                  ),
                ),
                // SizedBox(height: 30.0,),
              ],
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          top: 15.0,
          bottom: 15.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 110.0,
              image: AssetImage(destination.imageUrl),
              fit: BoxFit.cover, 
            ),
          ),
        ),
        Positioned(
          right: 35.0,
          bottom: 35.0,
          child: GestureDetector(
            // onTap: () => Navigator.push(
            //   context, MaterialPageRoute(
            //     builder: (_) => DestinationScreen(
            //       destination: destination,
            //     ),
            //   ),
            // ),
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (_) => DestinationScreen(
                  destination: destination,
                ),
              ),
            ),
            child: Row(
              children: [
                Text(
                  'Selengkapnya',
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                SizedBox(width: 5.0,),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 10.0,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}