import 'package:flutter/material.dart';

class Instruction extends StatefulWidget {
  @override
  State<Instruction> createState() => _InstructionState();
}

class _InstructionState extends State<Instruction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      body: Container(
          alignment: FractionalOffset.center,
          
          child: const Text(
            "Transaction Instructions",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }
}
