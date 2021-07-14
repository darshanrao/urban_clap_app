import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/ServiceProviderProfile/booking_info.dart';
import 'package:service_app/Screens/Customer/ServiceProviderProfile/service_provider_info.dart';
import 'package:service_app/Screens/Customer/ServiceProviderProfile/work_card.dart';
import 'package:service_app/Screens/Customer/prsl_chat_screen.dart';
import 'package:service_app/Widgets/button_tile2.dart';
import 'package:service_app/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderProfileScreen extends StatefulWidget {
  static String id = 'Service Provider Profile Screen';
  @override
  _ServiceProviderProfileScreenState createState() =>
      _ServiceProviderProfileScreenState();
}

class _ServiceProviderProfileScreenState
    extends State<ServiceProviderProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/Group 1969@3x.png'),
                    radius: 70,
                  ),
                  Column(
                    children: [
                      Container(
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Car Cleaning Service Delhi',
                            style: kHeading1,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Bhai Car Wash',
                          style: kHeading2,
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                child: Column(
                  children: [
                    TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: kPrimaryColor,
                      labelColor: kPrimaryColor,
                      tabs: [
                        Tab(
                          text: 'Info',
                        ),
                        Tab(
                          text: 'Works',
                        ),
                        Tab(
                          text: 'Gallery',
                        ),
                        Tab(
                          text: 'Reviews',
                        ),
                      ],
                    ),
                    Container(
                      height: 450,
                      child: TabBarView(
                        children: [
                          ServiceProviderInfo(),
                          ListView(
                            children: [
                              WorkCard(),
                              WorkCard(),
                              WorkCard(),
                              WorkCard(),
                              WorkCard(),
                              WorkCard(),
                            ],
                          ),
                          Center(
                            child: Text(
                              'Gallery Not Found',
                              style: kHeading1,
                            ),
                          ),
                          Center(
                            child: Text(
                              'No Reviews Found',
                              style: kHeading1,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTile2(
                    onPress: () {
                      Navigator.pushNamed(context, PrslChatScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('CHAT'),
                    ),
                  ),
                  ButtonTile2(
                    onPress: () {
                      Navigator.pushNamed(context, BookingInfo.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text('BOOK'),
                    ),
                  ),
                  ButtonTile2(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text('SERVICES'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
