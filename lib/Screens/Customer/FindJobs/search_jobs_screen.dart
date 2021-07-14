import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:service_app/Screens/Customer/FindJobs/job_card.dart';
import 'package:service_app/Screens/Customer/FindJobs/my_job_screen.dart';

import '../../../constants.dart';
import '../drawer.dart';

class SearchJobsScreen extends StatefulWidget {
  static String id = 'Search Jobs Screen';
  @override
  _SearchJobsScreenState createState() => _SearchJobsScreenState();
}

class _SearchJobsScreenState extends State<SearchJobsScreen> {
  bool loading = false;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, MyJobScreen.id);
          },
          backgroundColor: kPrimaryColor,
          child: Icon(CupertinoIcons.plus),
        ),
        drawer: DrawerHomePage(),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text('Find Jobs'),
        ),
        body: ListView(
          children: [JobCard()],
        ));
  }
}
