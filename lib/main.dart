// ignore_for_file: unused_import

import 'package:assignment_ui/WhatsappUi/screens/TabHomeScreen.dart';
import 'package:assignment_ui/ContactBook_ui/ContactUiSplash.dart';
import 'package:assignment_ui/Hotel%20app/HotelAppHome.dart';
import 'package:assignment_ui/ContactBook_ui/ContactBookHomeScreen.dart';
import 'package:assignment_ui/LoginSignUpUi/screens/LoginSignUpSplash.dart';
import 'package:assignment_ui/StaggeredGridView/Homescreen.dart';
import 'package:assignment_ui/gridview%20builder%20task/GridView_builderScreen.dart';
import 'package:assignment_ui/hotel_details_page_ui/screen1.dart';
import 'package:assignment_ui/profile%20ui%202/profileuiTwo.dart';
import 'package:assignment_ui/profile%20ui%20stack%20task/profile_ui_stack.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactUiSplash(),
    );
  }
}
