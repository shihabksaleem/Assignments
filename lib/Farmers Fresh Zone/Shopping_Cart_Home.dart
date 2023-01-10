import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/Blogs_List_Builder.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/Category_grid.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/Store_Item_Grid.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/carousel_image_slider.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/certified_badge_container.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/chips_Contaner.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/customer_reviews_container.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/review_corrousel.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/sliver_appbaar.dart';
import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/top_icon_card.dart';
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
  List topCarouselItemsList = [
    'https://images.pexels.com/photos/372882/pexels-photo-372882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/219794/pexels-photo-219794.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1196516/pexels-photo-1196516.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/196643/pexels-photo-196643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/594137/pexels-photo-594137.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/35625/vegetables-fresh-veggies-food.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1101249/pexels-photo-1101249.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];
  List BottomCarouselItemsList = [
    'https://images.pexels.com/photos/372882/pexels-photo-372882.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/219794/pexels-photo-219794.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1196516/pexels-photo-1196516.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/196643/pexels-photo-196643.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/594137/pexels-photo-594137.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/35625/vegetables-fresh-veggies-food.jpg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1565982/pexels-photo-1565982.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1101249/pexels-photo-1101249.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];
  List StoreItems = [
    {
      'Image':
          'https://img.freepik.com/premium-vector/carrot-image-ripe-carrot-vitamin-vegetable-organic-food-orange-carrots-vector-illustration-isolated-white-background_538993-719.jpg?size=338&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
      'Name': 'Carrot',
      'Rate': '34',
      'Qty': '0.05kg',
    },
    {
      'Image':
          'https://img.freepik.com/free-photo/bananas_1339-1187.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
      'Name': 'Banana',
      'Rate': '34.5',
      'Qty': '0.05kg',
    },
    {
      'Image':
          'https://img.freepik.com/free-photo/fresh-broccoli-isolated_144627-30009.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
      'Name': 'Brocoli Florets',
      'Rate': '99',
      'Qty': '1.00 NOS',
    },
    {
      'Image':
          'https://img.freepik.com/free-photo/delicious-potatoes-white-background_1203-1899.jpg?size=626&ext=jpg&uid=R89487700&ga=GA1.1.862767236.1673153802&semt=sph',
      'Name': 'potato',
      'Rate': '23',
      'Qty': '0.05kg',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbarContent(),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ChipsContainer(chips: chips),
                CarouselImageSlider(CarouselItemsList: topCarouselItemsList),
                const TopIconCardContainer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Shop By Category',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                StoreCategoryCardGrid(
                    CarouselItemsList: topCarouselItemsList, chips: chips),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(width: 3, color: Color(0xffcde0d5)))),
                  child: CarouselImageSlider(
                      CarouselItemsList: BottomCarouselItemsList),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Text(
                    'Best selling products',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                StoreItemGrid(StoreItems: StoreItems),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'VIEW MORE',
                    style: TextStyle(color: Color(0xff01b748)),
                  ),
                ),
                const CertifiedBadgeContainer(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Our Blog Posts',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ),
                BlogsListBuilder(),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'VIEW MORE',
                    style: TextStyle(color: Color(0xff01b748)),
                  ),
                ),
                const Divider(
                  thickness: 8,
                  color: Color(0xffcde0d5),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'What Our Customers Say',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700),
                  ),
                ),
                ReviewCarrousel()
              ],
            ),
          )
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
                  Icons.energy_savings_leaf,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart_checkout_outlined,
                ),
                label: 'Cart'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'Account'),
          ]),
    );
  }
}
