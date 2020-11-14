import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:health_monitoring_system/src/business_logic/services/firebase_services/firebase_services.dart';
import 'package:health_monitoring_system/src/views/ui/operation/home.dart';
import 'package:health_monitoring_system/src/views/ui/registration/register.dart';
import 'package:health_monitoring_system/src/views/utils/constant.dart';
import 'package:health_monitoring_system/src/views/utils/reusable_widgets.dart';

class Login extends StatefulWidget {
  Login({this.auth, this.loginCallback});

  final BaseAuth auth;
  final VoidCallback loginCallback;
  @override

  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email,password;
  String _errorMessage;

  bool _isLoginForm = true;
  bool _isLoading;

  bool validateAndSave() {
    if (email!=null && password!=null) {
      return true;
    }
    return false;
  }



  void validateAndSubmit() async {
    setState(() {
      _isLoading = true;
    });
    if (validateAndSave()) {
      String userId = "";
      try {
        if (_isLoginForm) {
          userId = await widget.auth.signIn(email, password);
          print('Signed in: $userId');
        } else {
          userId = await widget.auth.signUp(email, password);
          // Firebase_Firestore_END.save_user(userId, _name,_email);
          //widget.auth.sendEmailVerification();
          //_showVerifyEmailSentDialog();
          print('Signed up user: $userId');
        }
        setState(() {
          _isLoading = false;
        });

        if (userId.length > 0 && userId != null) {
          widget.loginCallback();
        }
      } catch (e) {
        print('Error: $e');
        setState(() {
          _isLoading = false;
          _errorMessage = e.message;
        });
      }
    }
  }

  @override
  void initState() {
    _errorMessage = "";
    _isLoading = false;
    _isLoginForm = true;
    super.initState();
  }

  void resetForm() {
    _errorMessage = "";
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kWhiteColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset('assets/images/corner-image.png')),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Welcome',
                        style: TextStyle(
                          color: kThemeColor,
                          fontSize: 30,
                        ),
                      ),
                      Text('Login in your account',
                      style: TextStyle(
                        color: Color.fromRGBO(151, 151, 151, 1),
                          fontWeight: FontWeight.w400, fontSize: 14, letterSpacing: 0.2
                      ),),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        onChanged: (value)
                        {
                          email = value;
                        },
                        decoration: new InputDecoration(
                          hintText: 'Email',
                          fillColor: kWhiteColor,
                          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40.0),
                            borderSide: BorderSide(),
                          ),
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
                        height: 15,
                      ),
                      TextFormField(
                        onChanged: (value)
                        {
                          password=value;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
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
                              'Forgot Password?',
                              style: greyText,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RoundedRaisedButton(text: 'SIGN IN', textColor: kWhiteColor, imageLink: null, onTap: (){
                        // validateAndSubmit();
                        //print(email+":"+password);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                      }, backgroundColor: kThemeColor),
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
                            "New user?",
                            style: greyText,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal : 8.0),
                              child: Text(
                                'Create a new account',
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
          ),
        )
    );
  }
}
