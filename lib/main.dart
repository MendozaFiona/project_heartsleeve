import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'homeinitiate.dart';

void main() {
  runApp(HeartSleeveApp());
} // main

class HeartSleeveApp extends StatelessWidget {
  //implement to stateful later

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(

        title: 'heartsleeve',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(106,65,98,1) 
        ),
        home: HomeInitiate()
    
    );
    
  } // build

}
