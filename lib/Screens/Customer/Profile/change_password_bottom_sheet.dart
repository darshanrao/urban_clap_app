import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Widgets/button_tile.dart';

import '../../../constants.dart';

class ChangePasswordBottomSheet extends StatefulWidget {
  @override
  _ChangePasswordBottomSheetState createState() =>
      _ChangePasswordBottomSheetState();
}

class _ChangePasswordBottomSheetState extends State<ChangePasswordBottomSheet> {
  bool passwordBool1;
  bool passwordBool2;
  bool passwordBool3;
  @override
  void initState() {
    passwordBool1 = true;
    passwordBool2 = true;
    passwordBool3 = true;
    super.initState();
  }

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
                  child: Text(
                    'Change Password',
                    style: TextStyle(fontSize: 24, color: Colors.white),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: TextField(
                    obscureText: passwordBool3,
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Confirm Password',
                      suffixIcon: TextButton.icon(
                        onPressed: () {
                          setState(() {
                            passwordBool3 = passwordBool3 ? false : true;
                          });
                        },
                        icon: passwordBool3
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
                    ButtonTile(
                      onPress: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 36.0),
                        child: Text(
                          'Save',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
