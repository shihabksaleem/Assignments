import 'package:assignment_ui/Farmers%20Fresh%20Zone/resources/customer_reviews_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ReviewCarrousel extends StatelessWidget {
  List reviewCarrouselList = [
    CustomerReviews(),
    CustomerReviews(),
    CustomerReviews(),
    CustomerReviews(),
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => reviewCarrouselList[index],
      itemCount: reviewCarrouselList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 1.6,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
