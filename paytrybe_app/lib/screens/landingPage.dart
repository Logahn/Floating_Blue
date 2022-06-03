import "package:flutter/material.dart";
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';
import 'package:paytrybe_app/screens/history.dart';
import 'package:paytrybe_app/screens/home/home.dart';
import 'package:paytrybe_app/screens/top_card.dart';

import '../shared/loading.dart';
import 'conversion.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 140, 255),
        appBar: AppBar(
          //title: Text('Home Page'),
          backgroundColor: Color.fromARGB(255, 0, 140, 255),
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
                icon: const Icon(Icons.monetization_on_rounded,
                    color: Colors.white),
                label:
                    const Text('Rates', style: TextStyle(color: Colors.white)),
                onPressed: () async {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Conversion(),
                    ),
                  );
                }),
            FlatButton.icon(
              icon: const Icon(Icons.person, color: Colors.white),
              label:
                  Text('Authenticate', style: TextStyle(color: Colors.white)),
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
        body: Container(
          child: LogoImageAsset(),
          height: 600,
          width: 600,
        )
        );
  }
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/paytrybe_logo2.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
