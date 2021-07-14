import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/Chat/chat_screen.dart';
import 'package:service_app/Screens/Customer/MyBooking/MyBookingScreen.dart';
import 'package:service_app/Screens/Customer/drawer.dart';
import 'package:service_app/Screens/Customer/home_page_card.dart';
import 'package:service_app/Screens/Customer/select_category_bottom_sheet.dart';
import 'package:service_app/Screens/logo_screen.dart';
import 'Notification/notification_screen.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/ServiceProviderProfile/service_provider_profile_screen.dart';
import 'package:service_app/constants.dart';

class HomePageScreen extends StatefulWidget {
  static String id = 'Home Page Screen';
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      drawer: DrawerHomePage(),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        title: Text('Services'),
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => CategoryBottomSheet());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        height: 36,
                        width: 36,
                        image: AssetImage('images/booking-1@3x.png'),
                      ),
                      Text(
                        'Select Categories',
                        style: TextStyle(fontSize: 16),
                      ),
                      Image(
                        height: 36,
                        width: 36,
                        image: AssetImage('images/booking-1@3x.png'),
                      ),
                    ],
                  ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    elevation: MaterialStateProperty.all(5),
                    foregroundColor: MaterialStateProperty.all(kTextColor),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
            ),
            HomePageCard(
              onPress: () {
                Navigator.pushNamed(context, ServiceProviderProfileScreen.id);
              },
            ),
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
                    Navigator.pushNamed(context, HomePageScreen.id);
                  },
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 42,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyBookingScreen.id);
                  },
                  child: Image(
                    height: 36,
                    width: 36,
                    image: AssetImage('images/booking@3x.png'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ChatScreen.id);
                  },
                  child: Image(
                    height: 36,
                    width: 36,
                    image: AssetImage('images/chat (3)@3x.png'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NotificationScreen.id);
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
