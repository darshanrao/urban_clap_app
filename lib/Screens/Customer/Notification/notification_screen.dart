import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/MyBooking/booking_card.dart';
import 'package:service_app/Screens/Customer/Notification/notification_card.dart';

import '../../../constants.dart';
import '../drawer.dart';

class NotificationScreen extends StatefulWidget {
  static String id = 'Notification Screen';
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHomePage(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
          NotificationCard(),
        ],
      ),
    );
  }
}
