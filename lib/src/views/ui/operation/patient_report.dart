import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class PatientReport extends StatefulWidget {
  @override
  _PatientReportState createState() => _PatientReportState();
}

class _PatientReportState extends State<PatientReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(215, 243, 245, 1),
      appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back),
            //onPressed:() => Navigator.pop(context, false),
            onPressed:() => {},
          ),
        title: Text('Patient Report'),
        backgroundColor: kThemeColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              PatientIdentity(
                name: 'Rafat Jamader Maraz',
                p_id: '126364',
                bed_no: '5  33',
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text('Risk:',style: HomeSub,),
                  SizedBox(
                    width: 10,
                  ),
                  ColorCircle(
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ColorCircle(
                    color: Colors.yellow,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ColorCircle(
                    color: Colors.red,
                  ),
                  Spacer(),
                  RaisedButton(
                    color: Colors.white,
                    elevation: 5,
                      child: Row(
                        children: [
                          Icon(
                            Icons.alarm,
                            size: 19,
                            color: kThemeColor,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Reminder'),
                        ],
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                    ),
                      onPressed: () {},
                    ),
                ],

              ),
              Text('Summary: (Last)',
              style: HomeItemSub,),
              SizedBox(
                height: 20,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.heart,
                widget_name: 'Blood Pressure',
                color: Colors.red,
              ),
              SizedBox(
                height: 10,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.heartbeat,
                widget_name: 'Heart Rate',
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.stopwatch,
                widget_name: 'Sugar',
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.temperatureHigh,
                widget_name: 'Temperature',
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.eyeDropper,
                widget_name: 'Urine',
                color: Colors.green,
              ),
              SizedBox(
                height: 10,
              ),
              ReportItems(
                widget: Row(
                  textBaseline: TextBaseline.ideographic,
                  mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '72',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'bpm',
                      style: HomeSub,
                    )
                  ],

                ),
                icon: FontAwesomeIcons.brain,
                widget_name: 'Brain',
                color: Colors.green,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
