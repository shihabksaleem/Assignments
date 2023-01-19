import 'package:flutter/material.dart';

class BalanceTopContainer extends StatelessWidget {
  const BalanceTopContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xff3834a3), Color(0xff4080e6)]),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: const [
                    Text(
                      'Total Balance',
                      style: TextStyle(color: Colors.white38, fontSize: 12),
                    ),
                    Text(
                      '14,325 🪙',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 33),
                    )
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: IntrinsicHeight(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      width: MediaQuery.of(context).size.width * .50,
                      child: Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Total \nBalance',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  '12,000 🪙',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3834a3),
                                      fontSize: 17),
                                )
                              ],
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Total \nBalance',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                ),
                                Text(
                                  '7508 🪙',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff3834a3),
                                      fontSize: 17),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ))
            ],
          ),
          Flexible(
            child: Image.asset(
              'assets/images/invoice/WallletImage.png',
            ),
          ),
        ],
      ),
    );
  }
}
