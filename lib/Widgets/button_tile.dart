import 'package:flutter/material.dart';
import 'package:service_app/constants.dart';

class ButtonTile extends StatelessWidget {
  final Function onPress;
  final Widget child;
  ButtonTile({this.onPress, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      child: TextButton(
        onPressed: onPress,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36.0),
                // side: BorderSide(color: Colors.red)
              ),
            ),
            elevation: MaterialStateProperty.all(5),
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(kPrimaryColor)),
      ),
    );
  }
}
