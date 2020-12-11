import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';

void main() {
  runApp(HeartSleeveApp());
} // main

class HeartSleeveApp extends StatelessWidget {
  //implement to stateful later

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(

        title: 'heartsleeve',
        home: Home()
    
    );
    
  } // build

}
