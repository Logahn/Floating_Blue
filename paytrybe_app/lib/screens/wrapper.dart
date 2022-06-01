import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/authenticate/authenticate.dart';
import 'package:paytrybe_app/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:paytrybe_app/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final user = Provider.of<User>(context);
    int user = 1;
    print(user);
    //return  Home or Authenticate
    if (user == 0) {
      return const Authenticate();
    } else {
      return const Home();
    }
  }
}
