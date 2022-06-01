import 'package:flutter/material.dart';
import 'package:paytrybe_app/services/auth.dart';
import 'package:paytrybe_app/screens/home/home.dart';

import '../../shared/constants.dart';

class SignIn extends StatefulWidget {

  //* final Function toggleView;
  //* SignIn({ required this.toggleView });

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: const Text('Sign in to Paytrybe'),
        actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text('Register'),
          onPressed:(){

          })]
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Email'),
              onChanged: (val) {
              setState(() => email = val);
            }),
            SizedBox(height: 20.0),
           
            TextFormField(
              decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }),
            SizedBox(height: 20.0),
            RaisedButton(
                color: Color.fromRGBO(4, 17, 29, 0.004),
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  //*print(email);
                  //*print(password);
                })
          ],
        )),
      ),
    );
  }
}
