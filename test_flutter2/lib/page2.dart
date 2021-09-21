import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter1/page1.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
            child: Text(
              "На экран 2",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
