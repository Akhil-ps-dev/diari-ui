
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:devolopment/01_home_caregory/theme.dart';
import 'package:devolopment/screens/initial_pages/02_add_task_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class HomeCategoryPage extends StatefulWidget {
  @override
  _HomeCategoryPageState createState() => _HomeCategoryPageState();
}

class _HomeCategoryPageState extends State<HomeCategoryPage> {
  DateTime _selectedDate = DateTime.now();

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
          _addDateBar(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTaskPage(),
              ));
        },
        label: Text(
          'Add Diary',
          style: TextStyle(color: Colors.white),
        ),
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange.shade500,
        elevation: 5,
      ),
    );
  }

  _addDateBar() {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10),
      child: DatePicker(
        DateTime.now(),
        height: 100,
        width: 80,
        initialSelectedDate: DateTime.now(),
        selectionColor: Colors.orange.shade500,
        selectedTextColor: Colors.white,
        dateTextStyle: GoogleFonts.lato(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.grey),
        monthTextStyle: GoogleFonts.lato(
            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
        dayTextStyle: GoogleFonts.lato(
            fontSize: 12, fontWeight: FontWeight.w600, color: Colors.grey),
        onDateChange: (date) {
          _selectedDate = date;
        },
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
