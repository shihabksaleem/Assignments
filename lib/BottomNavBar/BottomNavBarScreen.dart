// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomNavSampleScreen extends StatefulWidget {
  static String id = 'Bottom_Nav_Sample_Screen';
  const BottomNavSampleScreen({super.key});

  @override
  State<BottomNavSampleScreen> createState() => _BottomNavSampleScreenState();
}

class _BottomNavSampleScreenState extends State<BottomNavSampleScreen> {
  List screen = [
    Text('Accounts'),
    Text('Settings'),
    Text('Home'),
    Text('Store'),
  ];

  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav Bar Sample'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.shifting,
        onTap: (Value) {
          print(selectedindex);

          setState(() {
            selectedindex = Value;
            print(selectedindex);
          });
        },
        currentIndex: selectedindex,
        items: [
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(
              Icons.person,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Store',
            icon: Icon(
              Icons.store,
            ),
          )
        ],
      ),
      body: Center(
        child: screen[selectedindex],
      ),
    );
  }
}
