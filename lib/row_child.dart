import 'package:flutter/material.dart';


class RowChild extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Text("First Row Child"),
        new Text("Second Row Child"),
        new Text("Third Row Child"),
      ],
    );
  }
}