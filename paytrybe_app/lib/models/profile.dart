import 'package:flutter/material.dart';
import 'package:paytrybe_app/services/auth.dart';
import 'package:paytrybe_app/screens/home/home.dart';

import '../../shared/constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);



  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final AuthService _auth = AuthService();

  bool loading = false;

  String username = "";
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
          backgroundColor: Colors.blue[500],
          elevation: 0.0,
          title: const Text('Profile Page'),
          actions: <Widget>[
            // FlatButton.icon(
            //   icon: Icon(Icons.person, color: Colors.white),
            //   label: Text('Register', style: TextStyle(color: Colors.white)),
            //   onPressed: () async {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Register(),
            //       ),
            //     );
            //   },
            // )
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
            child: Column(
          children: <Widget>[
            SizedBox(height: 20.0),
            TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Username'),
                onChanged: (val) {
                  setState(() => username = val);
                }),
            SizedBox(height: 20.0),
            TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email'),
                onChanged: (val) {
                  setState(() => email = val);
                }),
            SizedBox(height: 40.0),
            TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password'),
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                }),
            SizedBox(height: 20.0),
            RaisedButton(
              color: Colors.blue[300],
              child: Text(
                'Update Details',
                style: TextStyle(color: Colors.white),
              ),
              splashColor: Colors.blue[500],
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ],
        )),
      ),
    );
  }
}
