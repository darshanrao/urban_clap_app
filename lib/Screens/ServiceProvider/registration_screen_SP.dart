import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Widgets/button_tile2.dart';

import '../../constants.dart';
import 'login_screen_SP.dart';

class RegistrationScreenSP extends StatefulWidget {
  static String id = 'Registration Screen Service Provider';
  @override
  _RegistrationScreenSPState createState() => _RegistrationScreenSPState();
}

class _RegistrationScreenSPState extends State<RegistrationScreenSP> {
  bool passwordBool1;
  bool passwordBool2;
  bool termsBool;
  @override
  void initState() {
    // TODO: implement initState
    passwordBool1 = true;
    passwordBool2 = true;
    termsBool = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(
                      'images/360_F_339942121_WjdSYFhmAIHjpz3slLlcCYfSz0SowkyJ.jpg'),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: TextField(
                        cursorColor: kSecondaryColor,
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Full Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: TextField(
                        cursorColor: kSecondaryColor,
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Email Address',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: TextField(
                        obscureText: passwordBool1,
                        cursorColor: kSecondaryColor,
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Password',
                          suffixIcon: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                passwordBool1 = passwordBool1 ? false : true;
                              });
                            },
                            icon: passwordBool1
                                ? Icon(
                                    CupertinoIcons.eye_slash_fill,
                                    size: 16,
                                    color: kPrimaryColor,
                                  )
                                : Icon(
                                    CupertinoIcons.eye_fill,
                                    size: 16,
                                    color: kPrimaryColor,
                                  ),
                            label: SizedBox(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: TextField(
                        obscureText: passwordBool2,
                        cursorColor: kSecondaryColor,
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Confirm Password',
                          suffixIcon: TextButton.icon(
                            onPressed: () {
                              setState(() {
                                passwordBool2 = passwordBool2 ? false : true;
                              });
                            },
                            icon: passwordBool2
                                ? Icon(
                                    CupertinoIcons.eye_slash_fill,
                                    size: 16,
                                    color: kPrimaryColor,
                                  )
                                : Icon(
                                    CupertinoIcons.eye_fill,
                                    size: 16,
                                    color: kPrimaryColor,
                                  ),
                            label: SizedBox(),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: termsBool,
                          checkColor: kTextColor,
                          activeColor: kPrimaryColor,
                          onChanged: (bool value) {
                            setState(() {
                              value = termsBool;
                            });
                          },
                        ),
                        Text('By Clicking You have read and agreed with our')
                      ],
                    ),
                    Text(
                      'Terms & Condition',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ButtonTile2(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 56.0),
                          child: Text(
                            'Register',
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You already have an account?',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, LoginScreenSP.id);
              },
              child: Text(
                'LOG IN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
