import 'package:flutter/material.dart';

class CustomerReviews extends StatelessWidget {
  const CustomerReviews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffcde0d5)),
        ),
        child: Column(
          children: [
            const ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/pic1.jpg'),
                radius: 25,
              ),
              title: Text(
                'Rinish k n',
                style: TextStyle(
                    color: Color(0xff01b208), fontWeight: FontWeight.w500),
              ),
              subtitle: Text('cto , RappidValue'),
              trailing: Icon(
                Icons.format_quote_outlined,
                color: Color(0xffcde0d5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  'i was exremely pleased after seeing the initiative by Farmers Fresh Zone to connect the Farmer-Supplier-Customer ecosystem. One thing sets FFZ apart from the rest is definitely the fresh taste of their products. I also had a chance to visit their farm,it was a great experience to take a look at the beautiful farms!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      height: 1.5, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
