import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:health_monitoring_system/src/business_logic/utils/constants.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';



// final FirebaseAuth _auth = FirebaseAuth.instance;
// final GoogleSignIn googleSignIn = GoogleSignIn();
// FirebaseApp defaultApp;
//
// Future<bool> signInWithGoogle() async {
//   final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//   final GoogleSignInAuthentication googleSignInAuthentication =
//   await googleSignInAccount.authentication;
//   defaultApp = await Firebase.initializeApp();
//
//   final AuthCredential credential = GoogleAuthProvider.getCredential(
//     accessToken: googleSignInAuthentication.accessToken,
//     idToken: googleSignInAuthentication.idToken,
//   );
//
//   final authResult = await _auth.signInWithCredential(credential);
//
//   if (authResult.user.isAnonymous) {
//     return false;
//   }
//
//   assert(!authResult.user.isAnonymous);
//   assert(await authResult.user.getIdToken() != null);
//
//   assert(authResult.user.uid == _auth.currentUser.uid);
//   RegisterUserData.socialId = authResult.user.uid.toString();
// //  print(RegistrationData.socialId);
//   RegisterUserData.socialLogin = '1';
//   RegisterUserData.email = authResult.user.email;
// //  UserData.socialLogin = true;
//   return true;
// }




abstract class BaseAuth {
  Future<String> signIn(String email, String password);

  Future<String> signUp(String email, String password);

  Future<FirebaseUser> getCurrentUser();

  Future<void> sendEmailVerification();

  Future<void> signOut();

  Future<bool> isEmailVerified();
}

class Auth implements BaseAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<String> signIn(String email, String password) async {
    AuthResult result = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user.uid;
  }

  Future<FirebaseUser> getCurrentUser() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user;
  }

  Future<void> signOut() async {
    return _firebaseAuth.signOut();
  }

  Future<void> sendEmailVerification() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    user.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    FirebaseUser user = await _firebaseAuth.currentUser();
    return user.isEmailVerified;
  }


}

