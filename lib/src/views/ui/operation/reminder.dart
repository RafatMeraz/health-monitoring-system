import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class Reminder extends StatefulWidget {
  @override
  _ReminderState createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool test;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(215, 243, 245, 1),
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back),
          //onPressed:() => Navigator.pop(context, false),
          onPressed:() => {},
        ),
        title: Text('Reminder'),
        backgroundColor: kThemeColor,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ReminderItem(
              time: '05:00',
              day: "Saturday",
            ),
            ReminderItem(
              time: '06:00',
              day: "Saturday",
            ),
            ReminderItem(
              time: '07:00',
              day: "Saturday",
            ),
            ReminderItem(
              time: '08:00',
              day: "Sunday",
            ),
          ],
        ),
      ),
    );
  }
}
