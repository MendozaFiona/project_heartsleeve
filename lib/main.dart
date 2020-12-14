import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'homepage.dart';
import 'writepage.dart';

void main() {
  runApp(HeartSleeveApp());
} // main

class HeartSleeveApp extends StatelessWidget {
  //implement to stateful later

  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
    ]);
   
    return MaterialApp(

        title: 'heartsleeve',
        theme: ThemeData(
          primaryColor: Color.fromRGBO(106,65,98,1) 
        ),
        home: WritePage()/*HomePage()*/,
    
    );
    
  } // build

}
