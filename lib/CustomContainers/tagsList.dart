import 'package:flutter/material.dart';

tagsList(_tags) {

  //final _
  return Column(children: [
    Row(
      children: [
        Text('tags (scrollable):', textAlign: TextAlign.center),
        //SizedBox(width: 170)
      ], // children
    ),
    Row(
      children: [
        Expanded(child: (Text("$_tags", textAlign: TextAlign.left))),
        //SizedBox(width: 170)
      ], // children
    ),
  ]);
}
