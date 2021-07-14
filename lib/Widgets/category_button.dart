import 'package:flutter/material.dart';
import 'package:service_app/constants.dart';

class CategoryButton extends StatelessWidget {
  final Function onPress;
  final Widget child;
  CategoryButton({this.onPress, this.child});

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
                borderRadius: BorderRadius.circular(8.0),
                // side: BorderSide(color: Colors.red)
              ),
            ),
            elevation: MaterialStateProperty.all(10),
            foregroundColor: MaterialStateProperty.all(kTextColor),
            backgroundColor: MaterialStateProperty.all(Colors.white)),
      ),
    );
  }
}
