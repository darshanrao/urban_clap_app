import 'package:flutter/material.dart';

import '../../../constants.dart';

class BookingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  children: [
                    SizedBox(
                      child: Text(
                        'Booking with Car Cleaning Services Delhi',
                        style: kHeading1,
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('images/Group 1969@3x.png'),
                          radius: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              child: Text(
                                'Bhai Car Wash',
                                style: kHeading2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(
                                    height: 32,
                                    width: 32,
                                    image: AssetImage(
                                        'images/calendar-and-clock-time-administration-and-organization-tools-symbol@3x.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Date:22 Dec 2020 02:50 pm',
                                      style: kContent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(
                                    height: 32,
                                    width: 32,
                                    image: AssetImage('images/pin (1)@3x.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 200,
                                      child: Text(
                                        'I-73,Aghapur,Sector 41,Noida,Uttar Pradesh 201303,India',
                                        textAlign: TextAlign.left,
                                        style: kContent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(
                                    height: 32,
                                    width: 32,
                                    image:
                                        AssetImage('images/hourglass@3x.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Waiting for Worker Response',
                                      style: kContent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image(
                                    height: 32,
                                    width: 32,
                                    image: AssetImage(
                                        'images/24-hours-delivery@3x.png'),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 200,
                                      child: Text(
                                        'Hey, for this work artist will take ₹500 for this booking',
                                        style: kContent,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          width: 32,
                          height: 32,
                          image: AssetImage('images/portfolio@3x.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '4 Jobs Completed',
                            style: kContent,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 1,
                            height: 45,
                            color: Colors.grey,
                          ),
                        ),
                        Image(
                          width: 32,
                          height: 32,
                          image: AssetImage('images/like (2)@3x.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '20  Completion',
                            style: kContent,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'CANCEL BOOKING',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: kPrimaryColor),
                          ),
                        ),
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
