// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:haloapp/screen/register_screen.dart';
import 'package:haloapp/screen/first_screen.dart';
import 'package:haloapp/widget/button_widget.dart';
import 'package:haloapp/widget/header_widget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          bottom: 30.0,
        ),
        child: Column(
          children: [
            HeaderWidget(),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
                child: Column(
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                      ),
                    ),
                    _textInput(context, hint: 'E-mail', icon: Icons.email),
                    _textInput(context, hint: 'Kata sandi', icon: Icons.lock),
                    Container(
                      margin: EdgeInsets.only(top: 10.0),
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Lupa kata sandi?',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: 'LOGIN', 
                          onClick: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => NavBarScreen(),
                              )
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum memiliki akun? Daftar ',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              )
                            );
                          },
                          child: Text(
                            'DISINI',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// GestureDetector(
//   onTap: () => Navigator.push(
//     context, MaterialPageRoute(
//       builder: (_) => BottomNavBar(),
//     ),
//   ),
// ),

Widget _textInput(BuildContext context, {controller, hint, icon}) {
  return Container(
    margin: EdgeInsets.only(top: 20.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
      color: Colors.white,
      boxShadow: [BoxShadow(
        color: Colors.black26,
        offset: Offset(0.0, 1.0),
        blurRadius: 1.0,
      )],
    ),
    padding: EdgeInsets.only(left: 10.0),
    child: TextFormField(
      controller: controller,
      cursorColor: Theme.of(context).primaryColor,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hint,
        prefixIcon: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
      ),
    ),
  );
}