import 'package:assignment_ui/banking_app/screens/home_screen/res/account_top_card.dart';
import 'package:flutter/material.dart';

class BankingHomeScreen extends StatelessWidget {
  static String id = 'banking_home_screen';
  const BankingHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        elevation: 0,
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.qr_code,
              size: 30,
            ),
          )
        ],
        title: RichText(
          text: const TextSpan(
              text: 'Welcome!',
              style: TextStyle(fontSize: 20),
              children: [TextSpan(text: ' '), TextSpan(text: 'MAUSAM')]),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                AccountTopcard(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/banking app/Banking app logo.png',
                        width: 40,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'WOULD YOU LIKE TO?',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GridView.builder(
                  padding: EdgeInsets.all(15),
                  itemCount: 6,
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.mobile_friendly),
                        Text(
                          'My Account',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/banking app/Banking app logo.png',
                        width: 40,
                      ),
                      SizedBox(width: 15),
                      const Text(
                        'LAST TRANSACTIONS',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                ListView.separated(
                    padding: EdgeInsets.all(15),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            child: Row(
                              children: [
                                Container(
                                  width: 15,
                                  height: 100,
                                  color: Colors.red.shade900,
                                ),
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          height: 10,
                        ),
                    itemCount: 5)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
