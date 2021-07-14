import 'dart:html';

import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  static String id = 'Services';
  @override
  _ServicesState createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('SERVICES'),
      ),
      body: Center(
        child: Text('NO SERVICE FOUND'),
      ),
    );
  }
}
