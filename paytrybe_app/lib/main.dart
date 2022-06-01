import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/wrapper.dart';
import 'package:paytrybe_app/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:paytrybe_app/services/auth.dart';
import 'package:paytrybe_app/models/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Wrapper(),
    );
  }

  // Widget build(BuildContext context) {
  //   return StreamProvider<User>.value(
  //     value: AuthService().user,
  //     child: const MaterialApp(
  //       home: Wrapper(),
  //     ),
  //   );
  // }
}
