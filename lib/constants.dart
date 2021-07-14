import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color kPrimaryColor = Color(0xFF04D337);
Color kSecondaryColor = Color(0xFF01691b);
Color kPrimaryGreyColor = Color(0xFF67d883);

Color kTextColor = Color(0xFF757575);
const kTextFieldDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Color(0xFF757575),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF757575), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF01691b), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(4.0)),
  ),
);
TextStyle kHeading1 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
TextStyle kHeading2 =
    TextStyle(color: kTextColor, fontWeight: FontWeight.w300, fontSize: 18);
TextStyle kContent =
    TextStyle(color: kTextColor, fontWeight: FontWeight.w300, fontSize: 12);
