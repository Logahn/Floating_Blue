import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:paytrybe_app/models/user.dart';

class AuthService {
//*  final FirebaseAuth _auth = FirebaseAuth.instance;

// Firebase User object
//*User _userFromFirebaseUser(FirebaseUser user){
//*  return user != null? User(uid: user.uid) :null;}

// auth user stream
//*Stream<User> get user{
//*  return _auth.onAuthStateChanged
//    .map((Firebase User user) => _userFromFirebaseUser(user));
//*    .map((_userFromFirebaseUser);
//*}

  //TODO sign in anon
//*  Future signInAnon() async {
//*    try {
//*      AuthResult result = await _auth.signInAnonymously();
//*      FirebaseUser user = result.user;
//*      return _userFromFirebaseUser(user);
//*    } catch (e) {
//*     print(e.toString());
//*      return null;

  //TODO sign in with email and password

  //TODO Register with email and password

  //TODO Log out

}
