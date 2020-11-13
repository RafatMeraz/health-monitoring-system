import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';
// ignore: camel_case_types
class PatientReport_Details extends StatefulWidget {
  @override
  _PatientReport_DetailsState createState() => _PatientReport_DetailsState();
}

// ignore: camel_case_types
class _PatientReport_DetailsState extends State<PatientReport_Details> {
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
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView(
          children: [
            PatientIdentity(
              name: 'Rafat Jamader Maraz',
              p_id: '126364',
              bed_no: '5  33',
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: 250
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Blood Pressure',style: HomeItem,),
                    Text('15 April - 21 April',style: greyTextL,),

                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            PatientReport_Item(
              color: Colors.red,
              value: '72',
              datetime: '21 April, 2020  09:00am',
            ),
            SizedBox(height: 10,),
            PatientReport_Item(
              color: Colors.red,
              value: '72',
              datetime: '21 April, 2020  09:00am',
            ),
            SizedBox(height: 10,),
            PatientReport_Item(
              color: Colors.red,
              value: '72',
              datetime: '21 April, 2020  09:00am',
            ),
            SizedBox(height: 10,),
            PatientReport_Item(
              color: Colors.red,
              value: '72',
              datetime: '21 April, 2020  09:00am',
            ),
            SizedBox(height: 10,),
            PatientReport_Item(
              color: Colors.red,
              value: '72',
              datetime: '21 April, 2020  09:00am',
            ),
          ],
        ),
      ),
    );
  }
}
