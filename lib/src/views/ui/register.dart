import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: SafeArea(
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 800,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 200,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 185, 198, 1),
                        borderRadius: new BorderRadius.only(
                            bottomLeft: Radius.circular(200.0))
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 1500,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 200,
                      maxWidth: 200,
                    ),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(2, 154, 165, 1),
                        borderRadius: new BorderRadius.only(
                            bottomLeft: Radius.circular(200.0))
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Text('Welcome',
                      style: TextStyle(
                        color: Color.fromRGBO(0, 185, 198, 1),
                        fontSize: 30,
                      ),
                    ),
                    Text('Please Login or Sign Up in Our App',
                      style: TextStyle(
                          color: Color.fromRGBO(151, 151, 151, 1)
                      ),),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                        hintText: 'Username',
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                        hintText: 'Phone or Email',
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: (val) {
                        if(val.length==0) {
                          return "Email cannot be empty";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextFormField(
                      decoration: new InputDecoration(
                        hintText: 'Password',
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(25.0),
                          borderSide: new BorderSide(
                          ),
                        ),
                        //fillColor: Colors.green
                      ),
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RawMaterialButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          disabledElevation: 10,
                          onPressed: (){
                            print('');
                          },
                          child: Text(
                            'Forgot Password',
                            style: greyText,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () => print('Tapped'),
                      child: new Container(
                        //width: 100.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Color.fromRGBO(0, 185, 198, 1),
                          border: new Border.all(color: Colors.white, width: 2.0),
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: new Center(child: new Text('Sign Up', style: new TextStyle(fontSize: 18.0, color: Colors.white),),),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Text("Already have an account ?",
                          style: greyText,),
                        RawMaterialButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          disabledElevation: 10,
                          onPressed: (){
                            print('');
                          },
                          child: Text(
                            'Log in',
                            style: primaryText,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text('Or Sign Up With -',
                        style: greyText,),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () => print('Tapped Google'),
                      child: new Container(
                        //width: 100.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          border: new Border.all(color: Colors.grey, width: 2.0),
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        child: new Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.account_circle_sharp
                            ),
                            Text(' Google', style: new TextStyle(fontSize: 18.0, color: Colors.red, fontWeight: FontWeight.bold), )
                          ],
                        ),),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
