import 'package:flutter/material.dart';
import 'package:freedomcars/buy_screen.dart';
import 'package:freedomcars/sell_screen.dart';
import 'package:freedomcars/resources/utils.dart';

class BuyOrSell extends StatefulWidget {
  const BuyOrSell({Key? key}) : super(key: key);

  @override
  State<BuyOrSell> createState() => _BuyOrSellState();
}

class _BuyOrSellState extends State<BuyOrSell> {
  int currentindex = 0;
  var screens = [
    BuyScreen(),
    SellScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentindex,
          children: screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: (_index) {
            Utils.removeFocus(context);
            setState(() {
              currentindex = _index;
            });
          },
          // elevation: 10,
          items: const [
            BottomNavigationBarItem(
              // activeIcon: Prankpayment(),
              label: 'Buy',
              // backgroundColor: Colors.red,
              icon: Icon(Icons.shopping_cart),
            ),
            BottomNavigationBarItem(
              // activeIcon: Profile(),
              label: 'Sell',
              // backgroundColor: Colors.amber,
              icon: Icon(Icons.sell_outlined),
            ),
          ],
          currentIndex: currentindex,
        ));
  }
}

