import 'package:flutter/material.dart';

class HotelsPackagesListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 30,
                ),
            itemCount: 10),
      ),
    );
  }
}
