import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/drawer.dart';
import 'package:service_app/constants.dart';

class ReceiptScreen extends StatefulWidget {
  static String id = 'Receipt Screen';
  @override
  _ReceiptScreenState createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHomePage(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Receipt'),
      ),
      body: Center(
        child: Text(
          'HISTORY NOT FOUND',
          style: TextStyle(
              color: kPrimaryColor, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
