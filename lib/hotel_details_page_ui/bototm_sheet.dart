import 'package:flutter/material.dart';

Future showBotttomSheet(BuildContext context) {
  return showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(30),
      ),
    ),
    context: context,
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: Container(
              height: 30,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(''))),
            ),
            title: Text('Store'),
          ),
          ListTile(
            leading: Icon(Icons.favorite_outline_outlined),
            title: Text('Favourites'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          )
        ],
      );
    },
  );
}
