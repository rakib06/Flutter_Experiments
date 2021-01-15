import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Hello world
    return Material(
        color: Colors.deepOrange,
        child: Center(
          child: Text(
            sayHi(),
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 36.0),
          ),
        ));
  }

  String sayHi() {
    // num, int, double, string
    String hello;
    DateTime now = new DateTime.now();
    int hour = now.hour;
    int minute = now.minute;
    if (hour < 12) {
      hello = "Good Morning";
    } else if (hour < 18) {
      hello = "Good Afternoon";
    } else {
      hello = "Good Evening";
    }
    String minutes =
        (minute < 10) ? "0" + minute.toString() : minute.toString();
    return "It's now" + hour.toString() + ":" + minutes + ". \n" + hello;
  }
}
