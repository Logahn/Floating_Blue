import 'package:flutter/material.dart';
import 'package:paytrybe_app/screens/home/home.dart';

class PlusButton extends StatelessWidget {
  final function;

  PlusButton({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: function,
        child: Center(
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.blue[500],
              shape: BoxShape.circle,
            ),
            child: Center(
                child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.currency_exchange_sharp,
                        color: Colors.white, size: 50),
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}


class HomeButton extends StatelessWidget {
 // final function;

 // PlusButton({this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       // onTap: Home(),
        child: Center(
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.blue[500],
              shape: BoxShape.circle,
            ),
            child: Center(
                child: RichText(
              text: const TextSpan(
                children: [
                  WidgetSpan(
                    child: Icon(Icons.currency_exchange_sharp,
                        color: Colors.white, size: 50),
                  ),
                ],
              ),
            )),
          ),
        ));
  }
}
