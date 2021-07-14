import 'package:flutter/material.dart';

import '../../../constants.dart';

class NotificationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: AlignmentDirectional.topEnd,
                      child: Text(
                        '04:58 PM',
                        style: kHeading2.copyWith(color: kPrimaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '21 days ago',
                        style: kHeading2,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'THIS IS THE MESSAGE SUBJECT',
                        style: kHeading1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message Message ',
                        style: kContent,
                      ),
                    ),
                  ],
                ),
              ),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: kPrimaryColor, width: 2)),
                  ),
                  // elevation: MaterialStateProperty.all(5),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
