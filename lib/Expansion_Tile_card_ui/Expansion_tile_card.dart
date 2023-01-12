// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:assignment_ui/Expansion_Tile_card_ui/experience_card.dart';
import 'package:flutter/material.dart';

double height = 100;

class ExpansionTileCardSample extends StatefulWidget {
  @override
  State<ExpansionTileCardSample> createState() =>
      _ExpansionTileCardSampleState();
}

class _ExpansionTileCardSampleState extends State<ExpansionTileCardSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        title: Text('Expansion Tile Card'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Text(
              'Experience',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey.shade800),
            ),
          ),
          ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ExperienceTileCard(
                    index: index,
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 20),
              itemCount: 3)
        ],
      ),
    );
  }
}
