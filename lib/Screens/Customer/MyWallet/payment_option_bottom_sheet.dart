import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/MyWallet/payment_screen.dart';
import 'package:service_app/Widgets/button_tile.dart';

import '../../../constants.dart';

class PaymentOptionBottomSheet extends StatefulWidget {
  static String id = 'Payment Option Bottom Sheet';
  @override
  _PaymentOptionBottomSheetState createState() =>
      _PaymentOptionBottomSheetState();
}

class _PaymentOptionBottomSheetState extends State<PaymentOptionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kTextColor,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
            child: Column(
              children: [
                ButtonTile(
                  onPress: () {
                    Navigator.pushNamed(context, PaymentScreen.id);
                  },
                  child: Text(
                    'Payment Option',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                ButtonTile(
                  onPress: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Text(
                      'Cancel',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
