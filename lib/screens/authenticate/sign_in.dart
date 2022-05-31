import 'package:flutter/material.dart';
import 'package:paytrybe_app/services/auth.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: const Text('Sign in to Paytrybe'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: const Text('sign in anonymous'),
          onPressed: () async {
//*         dynamic result = await _auth.SignInAnon()
//*           if(result == null){
//*              print('error signing in');
//*            } else {
//*              print('signed in');
//*              print(result);
//*            }
          },
        ),
      ),
    );
  }
}
