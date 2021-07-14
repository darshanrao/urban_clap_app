import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../constants.dart';

class WorkCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/Group 1969@3x.png'),
                radius: 40,
              ),
              Column(
                children: [
                  Text(
                    'Job Done For',
                    style: kContent,
                  ),
                  Text(
                    'Plaban Kakoty',
                    style: kHeading1,
                  ),
                  RatingBar.builder(
                    itemSize: 16,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: kPrimaryColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
            ],
          ),
          Text(
            '₹500',
            style: kHeading2.copyWith(color: kPrimaryColor),
          )
        ],
      ),
    );
  }
}
