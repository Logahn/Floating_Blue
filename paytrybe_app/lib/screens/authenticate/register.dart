import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';
import 'package:paytrybe_app/services/auth.dart';

class Register extends StatefulWidget {
  final Function toggleView;
  Register({ required this.toggleView });
  

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

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
        title: const Text('Sign up to Paytrybe'),
        actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text('Sign In'),
          onPressed:() => widget.toggleView(),
        )]
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextFormField(onChanged: (val) {
              setState(() => email = val);
            }),
            SizedBox(height: 20.0),
            TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }),
            const SizedBox(height: 20.0),
            RaisedButton(
                color: Color.fromRGBO(4, 17, 29, 0.004),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  print(email);
                  print(password);
                })
          ],
        )),
      ),
    );
  }
}