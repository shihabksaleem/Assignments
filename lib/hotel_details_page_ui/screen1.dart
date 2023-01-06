// ignore_for_file: avoid_print

import 'package:assignment_ui/hotel_details_page_ui/bototm_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelsPage1 extends StatelessWidget {
  const HotelsPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Stack(
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height * .45,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.pexels.com/photos/1638341/pexels-photo-1638341.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          fit: BoxFit.cover),
                    ),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            decoration: BoxDecoration(
                                color: Colors.white30,
                                borderRadius: BorderRadius.circular(20)),
                            child: const Text(
                              '8.4/85 reviews',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )),
                const Positioned(
                  top: 60,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'DETAIL',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Positioned(
                    bottom: 60,
                    left: 20,
                    child: Text(
                      'Crown Plaza Kochi,\n Kerala',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    )),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.purple,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey,
                          ),
                          Text(
                            '8 km to LuluMall',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: const [
                      Text(
                        '\$200',
                        style: TextStyle(
                            color: Colors.purple,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '/per night',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all(StadiumBorder()),
                ),
                child: Text('Book Now'),
                onPressed: () {
                  showBotttomSheet(context);
                },
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'DESCRIPTION',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Text(
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like,looking at its layout  \n\nCrown Plaza Kochi Kerala',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_outlined),
                label: 'Favourites'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings')
          ]),
    );
  }
}
