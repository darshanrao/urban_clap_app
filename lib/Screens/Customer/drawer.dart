import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/receipt_screen.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/FindJobs/search_jobs_screen.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/MyWallet/my_wallet_screen.dart';
import 'Chat/chat_screen.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/MyBooking/MyBookingScreen.dart';
import 'package:service_app/Screens/Customer/home_page_screen.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/Notification/notification_screen.dart';

import '../../constants.dart';
import 'Profile/profile_settings_screen.dart';

class DrawerHomePage extends StatefulWidget {
  @override
  _DrawerHomePageState createState() => _DrawerHomePageState();
}

class _DrawerHomePageState extends State<DrawerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1.5,
      child: Drawer(
        child: Container(
          color: kPrimaryColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                height: 300.0,
                child: DrawerHeader(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/Group 1969@3x.png'),
                        radius: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Name',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 42,
                ),
                title: Text('Home',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, HomePageScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/booking@3x.png'),
                ),
                title: Text('My Bookings',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, MyBookingScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/chat (3)@3x.png'),
                ),
                title: Text('Chats',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, ChatScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/receipt@3x.png'),
                ),
                title: Text('Receipt',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, ReceiptScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/search (1)@3x.png'),
                ),
                title: Text('Search Jobs',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, SearchJobsScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/wallet-filled-money-tool@3x.png'),
                ),
                title: Text('My Wallet',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, MyWalletScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/user (5)@3x.png'),
                ),
                title: Text('Profile',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, ProfileScreen.id);
                },
              ),
              ListTile(
                leading: Image(
                  height: 36,
                  width: 36,
                  image: AssetImage('images/bell (2)@3x.png'),
                ),
                title: Text('Notifications',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    )),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, NotificationScreen.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
