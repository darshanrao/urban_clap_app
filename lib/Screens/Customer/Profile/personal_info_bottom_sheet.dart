import 'package:flutter/material.dart';
import 'package:service_app/Widgets/button_tile.dart';

import '../../../constants.dart';

class PersonalInfoBottomSheet extends StatefulWidget {
  @override
  _PersonalInfoBottomSheetState createState() =>
      _PersonalInfoBottomSheetState();
}

class _PersonalInfoBottomSheetState extends State<PersonalInfoBottomSheet> {
  int gender;
  @override
  void initState() {
    gender = 0;
    // TODO: implement initState
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
                    'Personal Information',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Full Name',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Email Id',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Mobile Number',
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Gender',
                      style: TextStyle(color: kTextColor, fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      activeColor: kPrimaryColor,
                      groupValue: gender,
                      onChanged: (int val) {
                        setState(() {
                          gender = val;
                          print(gender);
                        });
                      },
                    ),
                    Text(
                      'Male',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                    Radio(
                      value: 2,
                      activeColor: kPrimaryColor,
                      groupValue: gender,
                      onChanged: (int val) {
                        setState(() {
                          gender = val;
                          print(gender);
                        });
                      },
                    ),
                    Text(
                      'Female',
                      style: TextStyle(color: kPrimaryColor),
                    ),
                  ],
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
