import 'package:flutter/material.dart';
import 'package:service_app/constants.dart';

class PrslChatScreen extends StatefulWidget {
  static String id = 'Personal Chat Screen';
  @override
  _PrslChatScreenState createState() => _PrslChatScreenState();
}

class _PrslChatScreenState extends State<PrslChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MessageBubble(
              isMe: false,
              text: 'Hi',
            ),
            MessageBubble(
              isMe: true,
              text: 'Hi',
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: kTextColor),
                borderRadius: BorderRadius.all(
                  Radius.circular(32),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image(
                      width: 32,
                      height: 32,
                      image: AssetImage('images/paperclip@3x.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        width: 32,
                        height: 32,
                        image: AssetImage('images/camera (3)@3x.png'),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Write Your Message',
                            border: InputBorder.none),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(
                        width: 32,
                        height: 32,
                        image: AssetImage('images/paper-plane@3x.png'),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String text;
  final String dateTime;
  final bool isMe;
  MessageBubble({this.text, this.dateTime, this.isMe});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe
          ? AlignmentDirectional.bottomEnd
          : AlignmentDirectional.bottomStart,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Hi',
                  style:
                      TextStyle(color: isMe ? kSecondaryColor : Colors.white),
                ),
              ),
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 5,
                        spreadRadius: 1,
                        offset: Offset(3, 3))
                  ],
                  color: isMe ? kPrimaryGreyColor : kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: isMe ? Radius.circular(8) : Radius.zero,
                      bottomRight: isMe ? Radius.zero : Radius.circular(8))),
            )
          ],
        ),
      ),
    );
  }
}
