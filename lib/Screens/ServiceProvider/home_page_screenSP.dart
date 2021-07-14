import 'dart:async';

import 'package:flutter/material.dart';
import 'package:service_app/Screens/ServiceProvider/edit_personal_information.dart';

import '../../constants.dart';
import 'drawerSP.dart';

class HomePageScreenSP extends StatefulWidget {
  static String id = 'Home Page Screen Service Provider';
  @override
  _HomePageScreenSPState createState() => _HomePageScreenSPState();
}

class _HomePageScreenSPState extends State<HomePageScreenSP> {
  @override
  void initState() {
    super.initState();
    Timer.run(() => _showMyDialog(context));
  }

  _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Incomplete Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Please complete Your Profile'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'No',
                style: TextStyle(color: kPrimaryColor),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                'Yes',
                style: TextStyle(color: kPrimaryColor),
              ),
              onPressed: () {
                Navigator.pushNamed(context, EditPersonalDetailsScreenSP.id);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: DrawerHomePageSP(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text('Find Jobs'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
                onPressed: () {
                  _showMyDialog(context);
                },
                child: Text(('Test Phase')))
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2.0),
          child: Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(16))),
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, HomePageScreen.id);
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 42,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, MyBookingScreen.id);
                  },
                  child: Image(
                    height: 36,
                    width: 36,
                    image: AssetImage('images/booking@3x.png'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, ChatScreen.id);
                  },
                  child: Image(
                    height: 36,
                    width: 36,
                    image: AssetImage('images/chat (3)@3x.png'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, NotificationScreen.id);
                  },
                  child: Image(
                    height: 36,
                    width: 36,
                    image: AssetImage('images/bell (2)@3x.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
