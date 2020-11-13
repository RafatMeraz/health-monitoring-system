import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/business_logic/services/firebase_services/firebase_services.dart';
import 'package:health_monitoring_system/src/views/ui/registration/login.dart';
import 'package:health_monitoring_system/src/views/ui/root/root.dart';
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
      ),
    );
  }
}