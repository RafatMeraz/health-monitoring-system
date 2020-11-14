import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/business_logic/services/firebase_services/firebase_services.dart';
import 'package:health_monitoring_system/src/views/ui/operation/patient_list.dart';
import 'package:health_monitoring_system/src/views/ui/registration/login.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class Home extends StatefulWidget {
  final VoidCallback logoutCallback;
  final BaseAuth auth;
  const Home({Key key, this.logoutCallback, this.auth}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   BaseAuth auth;
  _signOut() async {
    try {
      await widget.auth.signOut();
      widget.logoutCallback();
    } catch (e) {
      print(e);
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.grey),
          title: Text(
            'Home',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              _scaffoldKey.currentState.openDrawer(
              );
            },
            child: Image.asset('assets/images/nav-bar.png'),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: kWhiteColor,
                child: Image.asset('assets/images/user-girl.png'),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: Drawer_custom(
            logout: (){
              setState(() {
                _signOut();
              });

            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kThemeColor,
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        extendBodyBehindAppBar: true,
        body: SafeArea(
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Image.asset('assets/images/home-bg.png')),
                SingleChildScrollView(
                  child: Column(
                  children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Expanded(
                          child: HomeSingleMenu(
                            iconData: Icons.people,
                            iconColor: Colors.green[600],
                            value: '35',
                            text: 'Total Patient',
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => PatientList()));
                            },
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: HomeSingleMenu(
                            value: '12',
                            text: 'Starred',
                            onTap: (){},
                            iconColor: Colors.indigoAccent,
                            iconData: Icons.star_border,
                          ),
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
                        Text(
                          'Recent',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
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
                          ],
                        )
                      ],
                    ),
                  )
          ],
        ),
                ),

              ],
            )));
  }
}
