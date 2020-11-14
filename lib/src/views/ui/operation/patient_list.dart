import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: kThemeColor,
          accentColor: kThemeColor
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: kThemeColor,
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Tab(icon: Icon(Icons.local_hospital)),
                Tab(icon: Icon(Icons.medical_services)),
                Tab(icon: Icon(Icons.star)),
              ],
            ),
            title: Text('Patients'),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.red,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    DasBoardItems(
                      name: 'Rafat Jamader Maraz',
                      bed: '43',
                      color: Colors.yellow,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
