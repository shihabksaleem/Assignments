import 'package:assignment_ui/tourism_app/countries_data_list/countries_data_list.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final int index;

  const DetailsScreen({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(countriesDataList[index]['image']))),
          )
        ],
      ),
    );
  }
}
