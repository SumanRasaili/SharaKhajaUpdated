

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:saharakhaja/screens/homePage_screen.dart';
import 'package:saharakhaja/screens/login_screen.dart';

 class AuthService{
  
  handleAuthState(){
  return StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot){
    if(snapshot.hasData){
      return const  HomePage(title: "HomePage");
    }else{
      return const  LoginScreen();
    }
  } );
}
signinWithGoogle() async{
///to trigger the authentication
  final GoogleSignInAccount? googleUser = await  GoogleSignIn(scopes:<String>['email']).signIn();

  //obtain the auth details from request
  final GoogleSignInAuthentication googleSignInAuth = await googleUser!.authentication;
  //create a new credential
  final credential = GoogleAuthProvider.credential( 
    accessToken: googleSignInAuth.accessToken,
   idToken: googleSignInAuth.idToken
  );
//once signed in we have to return the  usercredentials
return await FirebaseAuth.instance.signInWithCredential(credential);

}
signOut(){

  FirebaseAuth.instance.signOut();
}}