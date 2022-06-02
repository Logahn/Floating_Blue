import 'package:flutter/material.dart';

import '../shared/constants.dart';
import 'authenticate/authenticate.dart';

class Conversion extends StatelessWidget {
  const Conversion({Key? key}) : super(key: key);

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
                      decoration: textInputDecoration.copyWith(
                        hintText: 'You Send',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Colors.blue[500],
                        ),
                        filled: true,
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [],
                    )
                  ],
                )))
              ],
            ),
          ),
        ));
  }
}
