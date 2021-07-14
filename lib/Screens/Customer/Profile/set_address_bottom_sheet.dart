import 'package:flutter/material.dart';
import 'package:service_app/Widgets/button_tile.dart';

import '../../../constants.dart';

class SetAddressBottomSheet extends StatefulWidget {
  @override
  _SetAddressBottomSheetState createState() => _SetAddressBottomSheetState();
}

class _SetAddressBottomSheetState extends State<SetAddressBottomSheet> {
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
                    'Set Address',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Enter Your Address',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'City',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Country',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    cursorColor: kSecondaryColor,
                    decoration: kTextFieldDecoration.copyWith(
                      labelText: 'Set Location',
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
