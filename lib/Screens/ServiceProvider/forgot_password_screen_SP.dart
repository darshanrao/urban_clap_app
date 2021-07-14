import 'package:flutter/material.dart';
import 'package:service_app/Widgets/button_tile.dart';

import '../../constants.dart';

class ForgotPasswordScreenSP extends StatefulWidget {
  static String id = 'Forgot Password Service Provider';
  @override
  _ForgotPasswordScreenSPState createState() => _ForgotPasswordScreenSPState();
}

class _ForgotPasswordScreenSPState extends State<ForgotPasswordScreenSP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(
                      'images/forgot-password-concept-illustration_114360-1095.jpg'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Email Address',
                    ),
                  ),
                ),
                ButtonTile(
                  onPress: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 56.0),
                    child: Text(
                      'SUMBIT',
                      style: TextStyle(fontSize: 24),
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
