import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kThemeColor,
        child: Icon(Icons.add),
        onPressed: () {  },

      ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipOval(
              child: Icon(Icons.account_circle_sharp,
              size: 30,),
            ),
          ),
        ],
        iconTheme: new IconThemeData(color: Colors.grey),
        title: Text('Home',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      drawer: Drawer(

      ),
      extendBodyBehindAppBar: true,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          // image: DecorationImage(
          //   image: AssetImage('assets/background/home.png'),
          //   fit: BoxFit.cover,
          // ),
        ),
        child: SafeArea(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                        Dasboard_Menu(
                          value: '35',
                          text: 'Total Patient',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      Dasboard_Menu(
                        value: '35',
                        text: 'Starred',
                      ),
                    ],
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Recents',style: HomeSub,),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        children: [
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.yellow,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          DasBoard_Items(
                            name: 'Rafat Jamader Maraz',
                            bed: '43',
                            color: Colors.yellow,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
      ),)
    );
  }
  }
