import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/api_client.dart';
import 'package:paytrybe_app/screens/currency_dropdown.dart';

import '../shared/constants.dart';
import 'authenticate/authenticate.dart';

class Conversion extends StatelessWidget {
  Conversion({Key? key}) : super(key: key);

  ApiClient client = ApiClient();
 late List<String> currencies;
  String from = "";
  String to = "";

  double rate = 0;
  String result = "";

  // Future<List<String>> getCurrencyList() async {
  //   return await client.getCurrencies();
  // }

  @override
  void initState() {
//   super.initState();
    (() async {
      //List<String> list = await client.getCurrencies();
      List<String> list = ["NGN", "USD", "RUB", "CAD","INR"];
      setState(() {
        currencies = list;
      });
    })();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[500],
        body: SafeArea(
          // ignore: sort_child_properties_last
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 60.0),
            // ignore: sort_child_properties_last
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    width: 500,
                    child: const Text(
                      "Conversion Rates",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Expanded(
                    child: Center(
                        child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextField(
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
                    const SizedBox(
                      height: 20.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            child: const Icon(Icons.swap_horiz),
                            elevation: 0.0,
                            backgroundColor: Color.fromARGB(209, 0, 78, 142),
                          ),
                          customDropDown(currencies, to, (val) {
                            setState(() {
                              to = val;
                            });
                          }),
                        ]),
                    const SizedBox(height: 20.0),
                    Container(
                      width: double.infinity,
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
                  ],
                )))
              ],
            ),
          ),
        ));
  }

  void setState(Null Function() param0) {}
}
