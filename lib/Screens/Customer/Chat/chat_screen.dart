import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/Chat/chat_card.dart';

import '../../../constants.dart';
import '../drawer.dart';

class ChatScreen extends StatefulWidget {
  static String id = 'Chat Screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHomePage(),
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        title: Text('Chats'),
      ),
      body: ListView(
        children: [
          ChatCard(),
        ],
      ),
    );
  }
}
