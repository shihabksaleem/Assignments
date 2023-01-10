import 'dart:ui';

import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/Category_grid.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/carousel_image_slider.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/chips_Contaner.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/sliver_appbaar.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/top_icon_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ShoppingCart extends StatelessWidget {
  List chips = [
    'OFFERS',
    'VEGETABLES',
    'FRUITS',
    'EXOTIC',
    'FRESH CUTS',
    'NUTRITION CHARGERS',
    'PACKED FLACOURS',
    'GOURMETS SALADS'
  ];
  List CarouselItemsList = [
    'https://images.pexels.com/photos/372882/pexels-photo-372882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/219794/pexels-photo-219794.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1196516/pexels-photo-1196516.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/196643/pexels-photo-196643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/594137/pexels-photo-594137.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/35625/vegetables-fresh-veggies-food.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1101249/pexels-photo-1101249.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppbarContent(),
          SliverList(
              delegate: SliverChildListDelegate(
            [
              ChipsContainer(chips: chips),
              CarouselImageSlider(CarouselItemsList: CarouselItemsList),
              const TopIconCardContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text('Shop By Category',
                    style:
                        TextStyle(fontSize: 20, color: Colors.grey.shade700)),
              ),
              StoreCategoryCardGrid(
                  CarouselItemsList: CarouselItemsList, chips: chips),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: const BoxDecoration(
                    border: Border.symmetric(
                        horizontal:
                            BorderSide(width: 1, color: Color(0xffcde0d5)))),
                child:
                    CarouselImageSlider(CarouselItemsList: CarouselItemsList),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  'Best selling products',
                  style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
                ),
              )
            ],
          ))
        ],
      ),
      // ignore: prefer_const_literals_to_create_immutables
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: const IconThemeData(color: Color(0xff01b748)),
          selectedLabelStyle: const TextStyle(color: Colors.green),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Account'),
          ]),
    );
  }
}
