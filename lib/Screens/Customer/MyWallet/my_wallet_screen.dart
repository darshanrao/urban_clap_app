import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/MyWallet/add_money_screen.dart';
import 'package:service_app/Screens/Customer/drawer.dart';
import 'package:service_app/Widgets/button_tile.dart';
import 'package:service_app/constants.dart';

class MyWalletScreen extends StatefulWidget {
  static String id = 'My Wallet Screen';
  @override
  _MyWalletScreenState createState() => _MyWalletScreenState();
}

class _MyWalletScreenState extends State<MyWalletScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text('My Wallet'),
        ),
        drawer: DrawerHomePage(),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32.0, horizontal: 56),
                    child: Column(
                      children: [
                        Text(
                          'Balance',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        ),
                        Text(
                          '₹ 0',
                          style: TextStyle(color: Colors.white, fontSize: 32),
                        )
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(32)),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: ButtonTile(
                onPress: () {
                  print('Pressed');
                  Navigator.pushNamed(context, AddMoneyScreen.id);
                },
                child: Text('Add Money'),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      overlayColor: MaterialStateProperty.all(kPrimaryColor),
                      unselectedLabelColor: Colors.white,
                      indicatorColor: Colors.white,
                      labelColor: Colors.white,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tab(
                            text: 'All',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tab(
                            text: 'Debit',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Tab(
                            text: 'Credit',
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
