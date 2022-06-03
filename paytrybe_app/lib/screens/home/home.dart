import "package:flutter/material.dart";
import 'package:paytrybe_app/my_flutter_app_icons.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/authenticate/register.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';
import 'package:paytrybe_app/screens/conversion.dart';
import 'package:paytrybe_app/screens/history.dart';
import 'package:paytrybe_app/screens/landingPage.dart';

import '../../shared/constants.dart';
import '../api_client.dart';
import '../currency_dropdown.dart';
import '../google_sheets_api.dart';
import '../plus_button.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  int _currentIndex = 0;
  List<Widget> body = const [
    Icon(Icons.home),
    Icon(Icons.currency_exchange_sharp),
    Icon(Icons.history),
  ];

  ApiClient client = ApiClient();
  late List<String> currencies = [];
  String from = "";
  String to = "";

  double rate = 0;
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: SafeArea(
      // ),
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        // title: Image.asset('images/paytrybe_logo.png', fit: BoxFit.cover),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: const Icon(Icons.settings_suggest_sharp, color: Colors.white),
            label: const Text('Settings',
                style: const TextStyle(color: Colors.white)),
            onPressed: () async {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Authenticate(),
                ),
              );
            },
          ),
        ],
      ),

      body: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.blue[500],
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  offset: Offset(4.0, 4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 5.0,
                  spreadRadius: 1.0),
            ]),
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        margin: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const SizedBox(height: 500.0),

            
            ElevatedButton.icon(
              
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LandingPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.currency_exchange_sharp,
                size: 24.0,
              ),
              label: const Text('Convert Money'),


            ),
            const SizedBox(height: 40.0),
            ElevatedButton.icon(
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => History(),
                  ),
                );
              },
              icon: const Icon(
                Icons.history,
                size: 24.0,
              ),
              label: const Text('Transaction History'),
            ),
          ],
        )),
      ),
    );
  }
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('images/paytrybe_logo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
