// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, prefer_collection_literals, deprecated_member_use, prefer_const_literals_to_create_immutables
// https://www.youtube.com/watch?v=B7JnIES8mRw
// https://www.youtube.com/watch?v=bKFE5UiEGVs
// Durasi 3.00

import 'package:flutter/material.dart';
import 'package:haloapp/model/destination_model.dart';
import 'package:haloapp/screen/destination_screen.dart';

class PlaceScreen extends StatefulWidget {
  PlaceScreen({Key? key}) : super(key: key);

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

class _PlaceScreenState extends State<PlaceScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 20.0,
        ),
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: destinations.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (BuildContext context, int index) {
            Destination destination = destinations[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context, MaterialPageRoute(
                  builder: (_) => DestinationScreen(
                    destination: destination,
                  ),
                ),
              ),
              child: Card(
                elevation: 0,
                color: Color(0xFFF3F5F7),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0.0,
                      child: Container(
                        height: 95.0,
                        width: 170.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 1.0,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: 15.0,
                            left: 5.0,
                            right: 5.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                destination.city,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                destination.country,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0.0,
                      child: Container(
                        height: 110.0,
                        width: 140.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 1.0),
                              blurRadius: 3.0,
                            ),
                          ],
                        ),
                        child: Hero(
                          tag: destination.imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image(
                              image: AssetImage(destination.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}