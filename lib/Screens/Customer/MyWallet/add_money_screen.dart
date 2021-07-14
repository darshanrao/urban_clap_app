import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/MyWallet/payment_option_bottom_sheet.dart';
import 'package:service_app/Widgets/button_tile2.dart';
import 'package:service_app/constants.dart';

class AddMoneyScreen extends StatefulWidget {
  static String id = 'Add Money Screen';
  @override
  _AddMoneyScreenState createState() => _AddMoneyScreenState();
}

class _AddMoneyScreenState extends State<AddMoneyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text('Add Money'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
            Image(
              height: 250,
              width: 250,
              image: AssetImage(
                  'images/illustration-man-getting-personal-loan-concept-lending-person-borrow-money-from-bank_277904-4095.jpg'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: kSecondaryColor,
                decoration: kTextFieldDecoration.copyWith(
                  labelText: 'Enter Amount',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ButtonTile2(
                onPress: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) =>
                          PaymentOptionBottomSheet());
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 56.0),
                  child: Text(
                    'Add Money',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
