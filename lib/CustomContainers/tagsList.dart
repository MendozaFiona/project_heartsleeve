import 'package:flutter/material.dart';

tagsList(_tags) {

  //final _
  return Column(children: [
    Row(
      children: [
        Text('tags (scrollable):', textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(244, 241, 236, .9),
            fontWeight: FontWeight.bold,
          ),
        ),
      //SizedBox(width: 170)
      ], // children
    ),
    Row(
      children: [
        Expanded(child: (Text("$_tags", textAlign: TextAlign.left,
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, .8),
            fontStyle: FontStyle.italic,
          ),
        ))),
        //SizedBox(width: 170)
      ], // children
    ),
  ]);
}
