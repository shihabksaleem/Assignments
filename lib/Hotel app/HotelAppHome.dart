// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScreenHotelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List dataList = [
      {
        'imagePath':
            'https://images.pexels.com/photos/276528/pexels-photo-276528.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Name': 'Main Street Resort',
        'Place': 'Kakanad',
        'StarCount': 4.50,
        'reviewCount': 20,
      },
      {
        'imagePath':
            'https://images.pexels.com/photos/775219/pexels-photo-775219.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Name': 'Ritz-Carlton Hotel',
        'Place': 'Alleppey',
        'StarCount': 4.5,
        'reviewCount': 4000,
      },
      {
        'imagePath':
            'https://images.pexels.com/photos/1329711/pexels-photo-1329711.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Name': 'Marriott',
        'Place': 'Munnar',
        'StarCount': 3.3,
        'reviewCount': 220,
      },
      {
        'imagePath':
            'https://images.pexels.com/photos/312029/pexels-photo-312029.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Name': 'The Luxury Collection Hotels',
        'Place': 'Kumarakom',
        'StarCount': 3.00,
        'reviewCount': 220,
      },
      {
        'imagePath':
            'https://images.pexels.com/photos/776538/pexels-photo-776538.jpeg?auto=compress&cs=tinysrgb&w=600',
        'Name': 'Rosewood Hotels & Resorts',
        'Place': 'Kovalam',
        'StarCount': 5.00,
        'reviewCount': 500,
      }
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 245, 241, 241),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
                backgroundColor: Color(0xFF00dbf9),
                expandedHeight: 180,
                pinned: true,
                leading: Icon(Icons.menu),
                actions: [
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.favorite_border))
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Type your Location',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              prefixIcon:
                                  Icon(Icons.search, color: Colors.grey),
                              hintText: 'Enter Location',
                              hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.white)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                      width: 0, color: Colors.white)),
                              fillColor: Colors.white,
                              filled: true),
                        ),
                      )
                    ],
                  ),
                )),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 10,
              ),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TopConteiners(
                    color: Colors.red,
                    icon: Icons.bed,
                    title: 'Hotel',
                  ),
                  SizedBox(width: 10),
                  TopConteiners(
                    color: Colors.blue,
                    icon: Icons.restaurant,
                    title: 'Restaurant',
                  ),
                  SizedBox(width: 10),
                  TopConteiners(
                    color: Colors.amber,
                    icon: Icons.coffee,
                    title: 'Cafe',
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 10.0,
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => roomCard(
                      imagePath: dataList[index]['imagePath'],
                      name: dataList[index]['Name'],
                      place: dataList[index]['Place'],
                      reviewCount: dataList[index]['reviewCount'],
                      starCount: dataList[index]['StarCount']),
                  childCount: dataList.length),
            )
          ],
        ),
      ),
    );
  }

  Padding roomCard(
      {required imagePath,
      required name,
      required place,
      required starCount,
      required reviewCount}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(imagePath), fit: BoxFit.cover),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    color: Colors.white,
                    child: Text(
                      "\$40",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 15),
              title: Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text(
                place,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 10),
              child: Row(
                children: [
                  RatingBar.builder(
                    initialRating: starCount,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.green,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    ('$reviewCount reviews'),
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TopConteiners extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;

  const TopConteiners(
      {super.key,
      required this.title,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 90,
      padding: EdgeInsets.all(10),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 22,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
