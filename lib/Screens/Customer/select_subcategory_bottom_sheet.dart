import 'package:flutter/material.dart';
import 'package:service_app/Widgets/category_button.dart';

import '../../constants.dart';

class SubCategoryBottomSheet extends StatefulWidget {
  @override
  _SubCategoryBottomSheetState createState() => _SubCategoryBottomSheetState();
}

class _SubCategoryBottomSheetState extends State<SubCategoryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kTextColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Select Category',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  CategoryButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Category 1',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  CategoryButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Category 2',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  CategoryButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Category 3',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
