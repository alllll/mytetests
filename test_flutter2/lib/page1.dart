import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter1/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
            child: Text(
              "На экран 1",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
