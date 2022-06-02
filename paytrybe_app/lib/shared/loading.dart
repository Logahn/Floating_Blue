import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:paytrybe_app/screens/home/home.dart';

import '../screens/conversion.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            //title: Text('Home Page'),
            backgroundColor: Colors.blue[500],
            elevation: 0.0,
            centerTitle: true,
            actions: <Widget>[
              FlatButton.icon(
                  icon: const Icon(Icons.monetization_on_rounded,
                      color: Colors.white),
                  label: const Text('Rates',
                      style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Conversion(),
                      ),
                    );
                  })
            ]),
        body: Container(
          color: Colors.blue[500],
          child: Center(
            child: SpinKitFadingCircle(
              color: Colors.white,
              size: 50.0,
            ),
          ),
        ));
  }
}
