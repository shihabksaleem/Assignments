// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:assignment_ui/ContactBook_ui/login_screen.dart';
import 'package:flutter/material.dart';

class ContactUiSplash extends StatefulWidget {
  @override
  State<ContactUiSplash> createState() => _ContactUiSplashState();
}

class _ContactUiSplashState extends State<ContactUiSplash> {
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScreenLogin(),
          )),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Color(0xFF1e1e28),
                  Color(0xFF232633),
                ]),
            image: DecorationImage(
                image: AssetImage(
                  'assets/loginSignUpAssets/images/logo.png',
                ),
                scale: 2)),
      ),
    );
  }
}
