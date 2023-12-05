// ignore_for_file: prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:haloapp/screen/login_screen.dart';
import 'package:haloapp/widget/button_widget.dart';
import 'package:haloapp/widget/header_widget.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                      'REGISTER',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0,
                        fontSize: 20.0,
                      ),
                    ),
                    _textInput(context, hint: 'Nama Lengkap', icon: Icons.text_fields_rounded),
                    _textInput(context, hint: 'Nama Pengguna', icon: Icons.person),
                    _textInput(context, hint: 'E-Mail', icon: Icons.email),
                    _textInput(context, hint: 'Kata Sandi', icon: Icons.lock),
                    Expanded(
                      child: Center(
                        child: ButtonWidget(
                          btnText: 'REGISTER', 
                          onClick: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => LoginScreen(),
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
                          'Sudah Memiliki Akun? Masuk ',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => LoginScreen(),
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