import 'package:flutter/material.dart';
import 'package:service_app/Screens/Customer/select_subcategory_bottom_sheet.dart';
import 'package:service_app/Widgets/category_button.dart';

import '../../constants.dart';

class CategoryBottomSheet extends StatefulWidget {
  @override
  _CategoryBottomSheetState createState() => _CategoryBottomSheetState();
}

class _CategoryBottomSheetState extends State<CategoryBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kTextColor,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              topLeft: Radius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
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
                          color: kTextColor),
                    ),
                  ),
                ),
                CategoryButton(
                  onPress: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SubCategoryBottomSheet());
                  },
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
                  onPress: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SubCategoryBottomSheet());
                  },
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
                  onPress: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SubCategoryBottomSheet());
                  },
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
                CategoryButton(
                  onPress: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SubCategoryBottomSheet());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Category 4',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
                CategoryButton(
                  onPress: () {
                    Navigator.pop(context);
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => SubCategoryBottomSheet());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Category 5',
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
    );
  }
}
