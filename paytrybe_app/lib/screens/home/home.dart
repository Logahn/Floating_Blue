import "package:flutter/material.dart";
import 'package:paytrybe_app/models/profile.dart';
import 'package:paytrybe_app/models/settings.dart';
import 'package:paytrybe_app/my_flutter_app_icons.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/authenticate/register.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';
import 'package:paytrybe_app/screens/conversion.dart';
import 'package:paytrybe_app/screens/history.dart';
import 'package:paytrybe_app/screens/instruction.dart';
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

  void initState() {
//   super.initState();
    (() async {
      //List<String> list = await client.getCurrencies();
      List<String> list = ["NGN", "USD", "RUB", "CAD", "INR"];
      setState(() {
        currencies = list;
      });
    })();
  }

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
          toolbarHeight: 120,
          title:
              Image.asset('images/paytrybe_logo1.png', fit: BoxFit.scaleDown),
          centerTitle: true,
          backgroundColor: Colors.blue[500],
          elevation: 0.0,
          actions: <Widget>[
            FlatButton.icon(
              icon:
                  const Icon(Icons.settings_suggest_sharp, color: Colors.white),
              label: const Text('Settings',
                  style: const TextStyle(color: Colors.white)),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ),
                );
              },
            ),
          ],
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                //ROW 1
                children: [
                  // Container(
                  //     alignment: FractionalOffset.center,
                  //     width: 300,
                  //     child: const Text(
                  //       "Conversion Rates",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 30,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     )),
                  const SizedBox(
                    height: 0.0,
                  ),
                  const SizedBox(height: 0.0),
                  Container(
                    // alignment: FractionalOffset.topCenter,
                    width: 350.0,
                    child: TextField(
                      onSubmitted: (value) async {
                        rate = await client.getRate(from, to);
                        setState(() {
                          result =
                              (rate * double.parse(value)).toStringAsFixed(3);
                        });
                      },
                      decoration: textInputDecoration.copyWith(
                        hintText: 'You Send',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.blue[500],
                        ),
                        filled: true,
                      ),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        customDropDown(currencies, from, (val) {
                          setState(() {
                            from = val;
                          });
                        }),
                        FloatingActionButton(
                          onPressed: () {
                            String temp = from;
                            setState(() {
                              from = to;
                              to = temp;
                            });
                          },
                          child: const Icon(
                            Icons.swap_horiz,
                            size: 24.0,
                          ),
                          elevation: 0.0,
                          backgroundColor: Color.fromARGB(209, 0, 78, 142),
                        ),
                        customDropDown(currencies, to, (val) {
                          setState(() {
                            to = val;
                          });
                        }),
                      ]),
                  Container(
                    alignment: FractionalOffset.bottomCenter,
                    width: 350.0,
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "You receive",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16.0,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          result,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // alignment: Alignment.bottomCenter,
                    alignment: FractionalOffset.bottomCenter,
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 100.0, horizontal: 50.0),
                    margin: const EdgeInsets.all(10.0),
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 80),
                              primary: Colors.blue[300]),
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Instruction(),
                              ),
                            );
                          },
                          icon: const Icon(
                            Icons.currency_exchange_sharp,
                            size: 24.0,
                          ),
                          label: const Text('Convert Money'),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(300, 80),
                              primary: Colors.blue[300]),
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
                ],
              )
            ]));
  }

  void setState(Null Function() param0) {}
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
