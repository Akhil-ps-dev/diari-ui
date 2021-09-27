import 'package:devolopment/01_home_caregory/button.dart';
import 'package:devolopment/01_home_caregory/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomeCategoryPage extends StatefulWidget {
  @override
  _HomeCategoryPageState createState() => _HomeCategoryPageState();
}

class _HomeCategoryPageState extends State<HomeCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Diary",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          _addTaskBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Add Diary'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.pink,
        elevation: 5,
      ),
    );
  }

  _addTaskBar() {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  DateFormat.yMMMMd().format(DateTime.now()),
                  style: subHeadingStyle,
                ),
                Text(
                  "Today",
                  style: headingStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
