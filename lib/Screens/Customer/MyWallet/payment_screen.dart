import 'package:flutter/material.dart';
import 'package:service_app/constants.dart';

class PaymentScreen extends StatefulWidget {
  static String id = 'Payment Screen';
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Payment'),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Pay Now'),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      // side: BorderSide(color: Colors.red)
                    ),
                  ),
                  elevation: MaterialStateProperty.all(5),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(kSecondaryColor)),
            ),
          )
        ],
      ),
    );
  }
}
