import "package:flutter/material.dart";
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text('Paytrybe Home Page'),
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: const Icon(Icons.person, color: Colors.white),
            label: Text('Profile',
              style: TextStyle(color: Colors.white)),
              onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Authenticate(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
