import 'package:flutter/material.dart';
import 'package:service_app/Screens/ServiceProvider/registration_screen_SP.dart';
import 'package:service_app/Widgets/button_tile.dart';

import 'login_screen_SP.dart';

class ServiceProviderScreen extends StatefulWidget {
  static String id = 'Service Provider Screen';
  @override
  _ServiceProviderScreenState createState() => _ServiceProviderScreenState();
}

class _ServiceProviderScreenState extends State<ServiceProviderScreen> {
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
                      Navigator.pushNamed(context, RegistrationScreenSP.id);
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
                      Navigator.pushNamed(context, LoginScreenSP.id);
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
