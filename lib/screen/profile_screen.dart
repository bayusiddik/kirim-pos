// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers, deprecated_member_use, avoid_print
// https://www.youtube.com/watch?v=tV6IKwb78vk
// Menit 2:50

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);


  // Widget textfield({required String hintText}) {
  //   return Material(
  //     elevation: 2.0,
  //     shadowColor: Colors.grey,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10.0),
  //     ),
  //     child: TextField(
  //       decoration: InputDecoration(
  //         hintText: hintText,
  //         hintStyle: TextStyle(
  //           letterSpacing: 2.0,
  //           color: Colors.black54,
  //           fontWeight: FontWeight.bold,
  //         ),
  //         fillColor: Colors.white30,
  //         filled: true,
  //         border: OutlineInputBorder(
  //           borderRadius: BorderRadius.circular(10.0),
  //           borderSide: BorderSide.none,
  //         ),
  //       ),
  //     ),
  //   );
  // }

  Widget textfield(BuildContext context, {required String textStart, required String textEnd}) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        // color: Theme.of(context).accentColor,
        color: Colors.white54,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [BoxShadow(
          color: Colors.black26,
          offset: Offset(0.0, 1.0),
          blurRadius: 0.0,
        )],
      ),
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textStart,
            style: TextStyle(
              // color: Theme.of(context).primaryColor,
              color: Color.fromARGB(221, 38, 38, 38),
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            textEnd,
            style: TextStyle(
              // color: Theme.of(context).primaryColor,
              color: Colors.black54,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Text(
                  'Keluar',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    print('Keluar');
                  },
                ),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CustomPaint(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.width,
                    height: 350.0,
                  ),
                  painter: HeaderCurvedContainer(),
                ),
                Positioned(
                  top: 5.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.width/2,
                        decoration: BoxDecoration(
                          boxShadow: [BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 1.0),
                            blurRadius: 1.0,
                          )],
                          border: Border.all(
                            color: Colors.white,
                            width: 5,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'Evan Dimas',
                          style: TextStyle(
                            fontSize: 30.0,
                            letterSpacing: 1.5,
                            color: Colors.black87,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 250.0,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // textfield(hintText: "ID"),
                  // SizedBox(height: 30.0,),
                  // textfield(hintText: "Username"),
                  // SizedBox(height: 30.0,),
                  // textfield(hintText: "Location"),
                  textfield(context, textStart: 'Username', textEnd: 'evandms3233'),
                  SizedBox(height: 30.0,),
                  textfield(context, textStart: 'Email', textEnd: 'evandms1999@yahoo.com'),
                  SizedBox(height: 30.0,),
                  textfield(context, textStart: 'Lokasi', textEnd: 'Jakarta, Indonesia'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color.fromARGB(255, 240, 96, 34);
    Path path = Path()..relativeLineTo(0, 150)
    ..quadraticBezierTo(size.width/2, 225, size.width, 150)
    ..relativeLineTo(0, -150)
    ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

}