import 'package:flutter/material.dart';
import 'package:paytrybe_app/models/profile.dart';
import 'package:paytrybe_app/screens/authenticate/register.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';
import 'package:paytrybe_app/screens/history.dart';
import 'package:paytrybe_app/screens/instruction.dart';
import 'package:paytrybe_app/screens/landingPage.dart';
import 'package:paytrybe_app/services/auth.dart';
import 'package:paytrybe_app/screens/home/home.dart';

import '../../shared/constants.dart';

class Settings extends StatefulWidget {
  //* final Function toggleView;
  //* SignIn({ required this.toggleView });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
          title: const Text('Settings'),
        ),
        body: Container(
          // alignment: Alignment.bottomCenter,
          alignment: FractionalOffset.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.blue[500],
              boxShadow: [
                // BoxShadow(
                //     color: Colors.grey.shade500,
                //     offset: Offset(4.0, 4.0),
                //     blurRadius: 15.0,
                //     spreadRadius: 1.0),
                // BoxShadow(
                //     color: Colors.white,
                //     offset: Offset(-4.0, -4.0),
                //     blurRadius: 5.0,
                //     spreadRadius: 1.0),
              ]),
          padding:
              const EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0),
          margin: const EdgeInsets.all(10.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 80), primary: Colors.blue[300]),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.person,
                  size: 24.0,
                ),
                label: const Text('Update Details'),
              ),
              const SizedBox(
                height: 40.0,
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 80), primary: Colors.blue[300]),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LandingPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.logout_outlined,
                  size: 24.0,
                ),
                label: const Text('Log Out'),
              ),
            ],
          )),
        ));
  }
}
