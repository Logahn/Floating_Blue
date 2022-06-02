import "package:flutter/material.dart";
import 'package:paytrybe_app/my_flutter_app_icons.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/authenticate/register.dart';
import 'package:paytrybe_app/screens/authenticate/sign_in.dart';

import '../../shared/constants.dart';
import '../api_client.dart';
import '../currency_dropdown.dart';
import '../google_sheets_api.dart';
import '../plus_button.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  ApiClient client = ApiClient();
  late List<String> currencies = [];
  String from = "";
  String to = "";

  double rate = 0;
  String result = "";

  final _textcontrollerAMOUNT = TextEditingController();
  final _textcontrollerITEM = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isIncome = false;

  void _enterTransaction() {
    GoogleSheetsApi.insert(
      _textcontrollerITEM.text,
      _textcontrollerAMOUNT.text,
      _isIncome,
    );
    setState(() {});
  }

  void _newTransaction() {
    var context;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, setState) {
              return AlertDialog(
                title: Text('N E W  T R A N S A C T I O N'),
                content: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Expense'),
                          Switch(
                            value: _isIncome,
                            onChanged: (newValue) {
                              setState(() {
                                _isIncome = newValue;
                              });
                            },
                          ),
                          Text('Income'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Form(
                              key: _formKey,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Amount?',
                                ),
                                validator: (text) {
                                  if (text == null || text.isEmpty) {
                                    return 'Enter an amount';
                                  }
                                  return null;
                                },
                                controller: _textcontrollerAMOUNT,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'For what?',
                              ),
                              controller: _textcontrollerITEM,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: <Widget>[
                  MaterialButton(
                    color: Colors.grey[600],
                    child:
                        Text('Cancel', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  MaterialButton(
                    color: Colors.grey[600],
                    child: Text('Enter', style: TextStyle(color: Colors.white)),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        _enterTransaction();
                        Navigator.of(context).pop();
                      }
                    },
                  )
                ],
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // ignore: sort_child_properties_last
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          // ignore: sort_child_properties_last
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Center(
                      child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
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
              ))),
              PlusButton(
                function: _newTransaction,
              ),
            ],
          ),
        ),
        // onPageChanged: onPageChanged,
      ),
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        // title: Image.asset('images/paytrybe_logo.png', fit: BoxFit.cover),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: const Icon(Icons.person, color: Colors.white),
            label: Text('Profile', style: TextStyle(color: Colors.white)),
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
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        elevation: 0.0,
        // onTap: onItemTap,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_filled, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            label: 'Convert Money',
            icon: Icon(Icons.currency_exchange_sharp, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            label: 'History',
            icon: Icon(Icons.history, color: Colors.blue),
          ),
        ],
      ),

      //   items: const [
      //     BottomNavigationBarItem(
      //         label: 'Home',
      //         icon: Icon(Icons.home_filled, color: Colors.white)),
      //     BottomNavigationBarItem(
      //         label: 'Convert Money',
      //         icon: Icon(Icons.currency_exchange_sharp, color: Colors.white)),
      //     BottomNavigationBarItem(
      //         label: 'History', icon: Icon(Icons.history, color: Colors.white))
      //   ],
      // ),
    );
  }

  void setState(Null Function() param0) {}
}

class LogoImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/paytrybe_logo.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}
