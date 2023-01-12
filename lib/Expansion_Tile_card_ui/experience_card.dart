import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'Expansion_tile_card.dart';

class ExperienceTileCard extends StatefulWidget {
  final index;

  const ExperienceTileCard({required this.index});
  @override
  State<ExperienceTileCard> createState() => _ExperienceTileCardState();
}

class _ExperienceTileCardState extends State<ExperienceTileCard> {
  List cardContents = [
    {
      'bg': 'https://assets1.lottiefiles.com/packages/lf20_Gpt6Y2.json',
      'title': 'Flutter Internship',
      'subtitle': '3 months',
      'institute': 'Luminar Technolab,Kochi',
      'details':
          'Gained indepth knowledge about Mobile Application Development and worked on various Projects',
    },
    {
      'bg': 'https://assets8.lottiefiles.com/packages/lf20_jtgztoga.json',
      'title': 'Android Training',
      'subtitle': '4 months',
      'institute': 'Android ,Kochi',
      'details':
          'Gained indepth knowledge about Android Development and worked on various Projects',
    },
    {
      'bg': 'https://assets6.lottiefiles.com/packages/lf20_v4isjbj5.json',
      'title': 'Java Training',
      'subtitle': '5 months',
      'institute': 'Java ,Kochi',
      'details':
          'Gained indepth knowledge about Java Programming and worked on various Projects',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Lottie.network(
              cardContents[widget.index]['bg'],
              fit: BoxFit.cover,
              height: 10,
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: ExpansionTileCard(
            onExpansionChanged: (value) {
              setState(() {
                value ? height = 200 : height = 100;
              });
            },
            baseColor: Colors.transparent,
            expandedColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text(
              cardContents[widget.index]['title'],
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              cardContents[widget.index]['subtitle'],
              style: TextStyle(color: Colors.white),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    cardContents[widget.index]['institute'],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  cardContents[widget.index]['details'],
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
