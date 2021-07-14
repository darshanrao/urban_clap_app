import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/drawer.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/Profile/change_password_bottom_sheet.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/Profile/personal_info_bottom_sheet.dart';
import 'file:///D:/CWS/service_app/lib/Screens/Customer/Profile/set_address_bottom_sheet.dart';
import 'package:service_app/Widgets/button_tile2.dart';
import 'package:service_app/constants.dart';

class ProfileScreen extends StatefulWidget {
  static String id = 'Profile Screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int gender;
  @override
  void initState() {
    gender = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHomePage(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Profile'),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topRight: Radius.zero,
                  topLeft: Radius.zero),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/Group 1969@3x.png'),
                      radius: 80,
                    ),
                  ),
                  ButtonTile2(
                    child: Text('CHANGE'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 32),
                                child: Text('Personal Information',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: TextButton(
                                  child: Image(
                                    height: 24,
                                    width: 24,
                                    image: AssetImage('images/edit (1)@3x.png'),
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          PersonalInfoBottomSheet(),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              cursorColor: kSecondaryColor,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Full Name',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              cursorColor: kSecondaryColor,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Email Id',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              cursorColor: kSecondaryColor,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Mobile Number',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              cursorColor: kSecondaryColor,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Gender',
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 32),
                                child: Text('Set Address',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 150.0),
                                child: TextButton(
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                        context: context,
                                        builder: (BuildContext context) =>
                                            SetAddressBottomSheet());
                                  },
                                  child: Image(
                                    height: 24,
                                    width: 24,
                                    image: AssetImage('images/edit (1)@3x.png'),
                                  ),
                                ),
                              ),
                            ],
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      ChangePasswordBottomSheet(),
                                );
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          height: 36,
                                          width: 36,
                                          image:
                                              AssetImage('images/login@3x.png'),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          'Change Password',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      CupertinoIcons.chevron_right,
                                      size: 36,
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        side: BorderSide(
                                            color: kPrimaryColor, width: 2)),
                                  ),
                                  // elevation: MaterialStateProperty.all(5),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: () {},
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image(
                                          height: 36,
                                          width: 36,
                                          image:
                                              AssetImage('images/Solid@3x.png'),
                                        ),
                                        SizedBox(
                                          width: 16,
                                        ),
                                        Text(
                                          'Log Out',
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Icon(
                                      CupertinoIcons.chevron_right,
                                      size: 36,
                                    ),
                                  ],
                                ),
                              ),
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        side: BorderSide(
                                            color: kPrimaryColor, width: 2)),
                                  ),
                                  // elevation: MaterialStateProperty.all(5),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.black),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
