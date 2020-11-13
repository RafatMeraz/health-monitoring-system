import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constant.dart';

class RoundedRaisedButton extends StatelessWidget {
  RoundedRaisedButton(
      {@required this.text,
        @required this.textColor,
        @required this.imageLink,
        @required this.onTap,
        @required this.backgroundColor});

  final Function onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minWidth: double.infinity),
        child: RaisedButton(
          elevation: 4,
          color: backgroundColor,
          onPressed: onTap,
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: imageLink == null
                ? Text(
              text,
              style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                  fontWeight: FontWeight.w600),
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 20,
                  height: 20,
                  child: Image.asset(imageLink),
                ),
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RoundedBorderedRaisedButton extends StatelessWidget {
  RoundedBorderedRaisedButton(
      {@required this.text,
        @required this.textColor,
        @required this.imageLink,
        @required this.onTap,
        @required this.borderColor,
        @required this.backgroundColor});

  final Function onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor, borderColor;
  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: borderColor)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ConstrainedBox(
          constraints: const BoxConstraints(minWidth: double.infinity),
          child: RaisedButton(
            elevation: 4,
            color: backgroundColor,
            onPressed: onTap,
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: imageLink == null
                  ? Text(
                text,
                style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.bold),
              )
                  : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 20,
                    height: 20,
                    child: Image.asset(imageLink),
                  ),
                  SizedBox(width: 20),
                  Text(
                    text,
                    style: TextStyle(
                        fontSize: 14,
                        color: textColor,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class Dasboard_Menu extends StatelessWidget {
  final String value;
  final String text;

  const Dasboard_Menu({Key key, this.value, this.text}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 116,
        maxWidth: 160,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color: kThemeColor,
            width: 3,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(value,
              style: HomeText,
            ),
            Text(text,
              style: HomeSub,)
          ],
        ),
      ),
    );
  }
}

class DasBoard_Items extends StatelessWidget {
  final String name;
  final String bed;
  final Color color;

  const DasBoard_Items({Key key, this.name,this.bed, this.color}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 5), // changes position of shadow
          ),
        ]
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
            border: Border.all(
            color: Colors.blueGrey,
            width: 2,

          )),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                    Row(
                        children: [
                            Text(name, style: HomeItem,),
                            Spacer(),
                            Container(
                            constraints: BoxConstraints(
                            maxHeight: 20,
                              maxWidth: 20,
                        ),
                             decoration: BoxDecoration(
                              color: color,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        )
                    ],
                      ),
                        Text('Bed No:$bed',
                          style: HomeItemSub,
                      )]),
        ),
      ),
    );
  }
}


class PatientIdentity extends StatelessWidget {
  final String name;
  // ignore: non_constant_identifier_names
  final String p_id;
  // ignore: non_constant_identifier_names
  final String bed_no;

  // ignore: non_constant_identifier_names
  const PatientIdentity({Key key, this.name, this.p_id, this.bed_no}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
            constraints: BoxConstraints(
              minWidth: 100,
              maxWidth: 100,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Patient Name: $name',
                  style: HomeItemSub,),
                  Text('Patient ID: $p_id',
                      style: HomeItemSub),
                  Text('Bed No: $bed_no',
                      style: HomeItemSub),
                ],
              ),
            ),
      ),
    );
  }
}


class ColorCircle extends StatelessWidget {
  final Color color;

  const ColorCircle({Key key, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 15,
        maxWidth: 15,
      ),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
    );
  }
}

class ReportItems extends StatelessWidget {
  final IconData icon;
  final Color color;
  // ignore: non_constant_identifier_names
  final String widget_name;
  final Widget widget;

  // ignore: non_constant_identifier_names
  const ReportItems({Key key, this.icon, this.widget_name, this.widget, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: 120,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(icon,
                    color: kThemeColor,),
                    SizedBox(
                      width: 5,
                    ),
                    Text(widget_name,
                    style: HomeItemSub,),
                    Spacer(),
                    ColorCircle(
                      color: color,
                    )
                  ],
                ),
                Center(child: widget),
                Row(
                  children: [
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'See Details',
                          style: primaryText,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
    );
  }
}


// ignore: camel_case_types
class PatientReport_Item extends StatelessWidget {
  final Color color;
  final String value;
  final String datetime;

  const PatientReport_Item({Key key, this.color, this.value, this.datetime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: 80,
              ),
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15))
            ),
              child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: Column(
                          children: [
                                  Row(
                                    children: [
                                          Spacer(),
                                          ColorCircle(
                                              color: color,
                                                )
                                              ],
                                                ),
                                  Row(
                                      children: [
                                          Icon(FontAwesomeIcons.heart, color: kThemeColor,),
                                          SizedBox(width: 5,),
                                          Text(value, style: RegularL,),
                                          SizedBox(width: 5,),
                                          Text('bpm',style: HomeSub,),
                                          Spacer(),
                                          Text(datetime,style: HomeItemSub,)
                                        ],
                                          )
                                      ],
                                      ),
                                            ),
                                           );
                                }
                      }

class ReminderItem extends StatelessWidget {
  final String time;
  final String day;

  const ReminderItem({Key key, this.time, this.day}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 200,
        minHeight: 100,
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(time, style: timeText,),
                Spacer(),


              ],
            ),
            Text(day,style: timeTextS,)
          ],
        ),
      ),
    );
  }
}
