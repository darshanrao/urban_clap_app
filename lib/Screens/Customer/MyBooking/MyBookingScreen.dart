import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/MyBooking/booking_card.dart';
import 'package:service_app/Screens/Customer/drawer.dart';
import 'package:service_app/constants.dart';

class MyBookingScreen extends StatefulWidget {
  static String id = 'My Booking Screen';
  @override
  _MyBookingScreenState createState() => _MyBookingScreenState();
}

class _MyBookingScreenState extends State<MyBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHomePage(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('My Bookings'),
      ),
      body: ListView(
        children: [
          BookingCard(),
        ],
      ),
    );
  }
}
