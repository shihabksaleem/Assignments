import 'package:flutter/material.dart';

class BlogsListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
          width: 150,
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffcde0d5)),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/shopping cart/Blog.png'))),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('control Blood Pressure'),
              ),
              const SizedBox(
                width: 160,
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  title: Text('5 months ago'),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff01b748),
                  ),
                  dense: true,
                ),
              )
            ],
          ),
        ),
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}
