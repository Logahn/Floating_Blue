import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return  Home or Authenticate
    return const Authenticate();
  }
}
