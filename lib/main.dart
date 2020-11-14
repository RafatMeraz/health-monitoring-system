import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/business_logic/services/firebase_services/firebase_services.dart';
import 'package:health_monitoring_system/src/views/ui/registration/login.dart';
import 'file:///C:/Users/sohan/Desktop/health-monitoring-system/lib/src/views/ui/operation/splash.dart';

import 'src/views/ui/operation/home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HMS',
      debugShowCheckedModeBanner: false,
      home: RootPage(
        auth: Auth(),
      )
    );
  }
}