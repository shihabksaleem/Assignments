// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ExpansionTileCardSample extends StatefulWidget {
  static double height = 100;
  @override
  State<ExpansionTileCardSample> createState() =>
      _ExpansionTileCardSampleState();
}

class _ExpansionTileCardSampleState extends State<ExpansionTileCardSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion Tile Card'),
      ),
      body: Column(
        children: [
          Text(
            'Experience',
            style: TextStyle(fontSize: 20),
          ),
          Stack(children: [
            SizedBox(
              height: ExpansionTileCardSample.height,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Lottie.network(
                  'https://assets2.lottiefiles.com/packages/lf20_j62mha6p.json',
                  fit: BoxFit.fill,
                  height: 10,
                ),
              ),
            ),
            ExperienceTileCard(),
          ]),
        ],
      ),
    );
  }
}

class ExperienceTileCard extends StatefulWidget {
  @override
  State<ExperienceTileCard> createState() => _ExperienceTileCardState();
}

class _ExperienceTileCardState extends State<ExperienceTileCard> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ExpansionTileCard(
        onExpansionChanged: (value) {
          setState(() {
            value
                ? ExpansionTileCardSample.height = 200
                : ExpansionTileCardSample.height = 100;
          });
        },
        baseColor: Colors.transparent,
        expandedColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          'Flutter Internship',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          '6 months',
          style: TextStyle(color: Colors.white),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Luminar Technolab,Kochi',
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
              'Gained indepth knowledge about Mobile Application Development and worked on various Projects',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
