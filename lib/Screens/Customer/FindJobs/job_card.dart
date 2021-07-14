import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class JobCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                        side: BorderSide(color: kPrimaryColor, width: 2)),
                  ),
                  // elevation: MaterialStateProperty.all(5),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Job ID:37XIXU',
                              style: kHeading2.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Date:22 Dec 2020,02:50 pm',
                              style: kHeading2,
                            ),
                            Text(
                              'Applied:0',
                              style: kHeading2,
                            ),
                          ],
                        ),
                        Text(
                          '₹5',
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 32),
                        )
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Service Type:',
                              style: kHeading2.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Cardiologist',
                              style: kHeading2.copyWith(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Open',
                              style: kHeading2.copyWith(color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.yellow[900],
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image(
                            height: 80,
                            width: 80,
                            image: AssetImage('images/Group 1969@3x.png')),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Title',
                              style: kHeading2.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              child: Text(
                                'Description',
                                style: kHeading2,
                              ),
                            ),
                            Row(
                              children: [
                                Image(
                                  height: 15,
                                  width: 15,
                                  image: AssetImage('images/pin (1)@3x.png'),
                                ),
                                Container(
                                  child: Text(
                                    'Address.......',
                                    style: kContent,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image:
                                        AssetImage('images/edit (1)@3x.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Edit',
                                  style: kHeading2,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage('images/block@3x.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Delete',
                                  style: kHeading2,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Image(
                                    height: 30,
                                    width: 30,
                                    image: AssetImage('images/checked@3x.png')),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Completed',
                                  style: kHeading2,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
