import 'package:flutter/material.dart';
import 'package:service_app/Screens/ServiceProvider/home_page_screenSP.dart';
import 'package:service_app/Widgets/button_tile.dart';
import 'package:service_app/Widgets/button_tile2.dart';
import 'package:service_app/constants.dart';

class EditPersonalDetailsScreenSP extends StatefulWidget {
  static String id = 'Edit Personal Details Screen Service Provider';
  @override
  _EditPersonalDetailsScreenSPState createState() =>
      _EditPersonalDetailsScreenSPState();
}

class _EditPersonalDetailsScreenSPState
    extends State<EditPersonalDetailsScreenSP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Edit Personal Information'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          height: 16,
                          width: 16,
                          image: AssetImage('images/booking-1@3x.png')),
                    ),
                    labelText: 'Select Your Speciality',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Your Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Your City',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Your Country',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                          height: 16,
                          width: 16,
                          image: AssetImage('images/pin (1)@3x.png')),
                    ),
                    labelText: 'Your Location',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'My Rate',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Your Bio',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 32),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: kSecondaryColor,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Write Description',
                  ),
                ),
              ),
              ButtonTile(
                onPress: () {
                  Navigator.pushNamed(context, HomePageScreenSP.id);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
