import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/forgot_password_screen.dart';
import 'package:service_app/Screens/Customer/home_page_screen.dart';
import 'package:service_app/Screens/Customer/registration_screen.dart';
import 'package:service_app/Widgets/button_tile2.dart';

import '../../constants.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'Login Screen Customer';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordBool;
  @override
  void initState() {
    passwordBool = true;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                height: 300,
                width: 560,
                image: AssetImage(
                    'images/360_F_339942121_WjdSYFhmAIHjpz3slLlcCYfSz0SowkyJ.jpg'),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      cursorColor: kSecondaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText: 'Email Address',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: TextField(
                      obscureText: passwordBool,
                      cursorColor: kSecondaryColor,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText: 'Confirm Password',
                        suffixIcon: TextButton.icon(
                          onPressed: () {
                            setState(() {
                              passwordBool = passwordBool ? false : true;
                            });
                          },
                          icon: passwordBool
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
                    padding: const EdgeInsets.all(8.0),
                    child: ButtonTile2(
                      onPress: () {
                        Navigator.pushNamed(context, HomePageScreen.id);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 56.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, ForgotPasswordScreen.id);
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: TextStyle(
                color: kTextColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
              child: Text(
                'Register',
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
