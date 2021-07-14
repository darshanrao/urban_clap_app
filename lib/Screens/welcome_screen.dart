import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/customer_screen.dart';
import 'package:service_app/Screens/ServiceProvider/service_provider_screen.dart';
import 'package:service_app/Widgets/button_tile.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'Welcome_Screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: Text(
                  'Welcome to Service App',
                  style: TextStyle(fontSize: 32),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image(
                    image: AssetImage(
                        'images/service-man-with-tools-illustration_111797-91.jpg')),
              ),
              Column(
                children: [
                  ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, CustomerScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'I am Customer',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ButtonTile(
                    onPress: () {
                      Navigator.pushNamed(context, ServiceProviderScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        'I am Service Provider',
                        style: TextStyle(fontSize: 24),
                      ),
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
