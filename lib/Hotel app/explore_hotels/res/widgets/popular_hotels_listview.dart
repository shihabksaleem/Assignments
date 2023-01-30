import 'package:flutter/material.dart';

class PopularHotelsListView extends StatelessWidget {
  const PopularHotelsListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 100,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  width: 10,
                ),
            itemCount: 10),
      ),
    );
  }
}
