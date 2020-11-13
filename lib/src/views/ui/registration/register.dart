import 'package:flutter/material.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.centerRight,
              child: Image.asset('assets/images/corner-image.png')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: kThemeColor,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Sign up in our app',
                  style: TextStyle(color: Color.fromRGBO(151, 151, 151, 1), fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: 0.2),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(),
                    ),
                  ),
                  validator: (val) {
                    if (val.length == 0) {
                      return "Email cannot be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.emailAddress,
                  style: new TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: BorderSide(),
                    ),
                  ),
                  style: TextStyle(
                    fontFamily: "Poppins",
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RawMaterialButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      disabledElevation: 10,
                      onPressed: () {
                        print('');
                      },
                      child: Text(
                        'Forgot Password',
                        style: greyText,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedRaisedButton(text: 'SIGN UP', textColor: kWhiteColor, imageLink: null, onTap: (){}, backgroundColor: kThemeColor),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Already have an account ?",
                      style: greyText,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal : 8.0),
                        child: Text(
                          'Log in',
                          style: primaryText,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text(
                    'Or sign up with',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.5
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RoundedBorderedRaisedButton(text: 'GOOGLE', textColor: kBlackColor, imageLink: 'assets/images/google.png', onTap: () {}, borderColor: kSoftGreyColor, backgroundColor: kWhiteColor),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
