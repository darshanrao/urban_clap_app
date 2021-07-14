import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/registration_screen.dart';
import 'package:service_app/Widgets/button_tile.dart';

import 'login_screen.dart';

class CustomerScreen extends StatefulWidget {
  static String id = 'Customer_screen';
  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      'Welcome to Uclab Service App',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Order, Get Work And Easy Pay',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(
                    image: AssetImage(
                        'images/maintenance-concept-illustration_114360-381.jpg')),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, RegistrationScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'Register',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'LOG IN',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
