import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImageSlider extends StatelessWidget {
  const CarouselImageSlider({
    Key? key,
    required this.CarouselItemsList,
  }) : super(key: key);

  final List CarouselItemsList;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemBuilder: (context, index, realIndex) => Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  CarouselItemsList[index],
                ))),
      ),
      itemCount: CarouselItemsList.length,
      options: CarouselOptions(
        pageSnapping: true,
        aspectRatio: 16 / 8,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
      ),
    );
  }
}
