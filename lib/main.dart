import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

//compile these all in one method later
import 'homePage.dart';
import 'writePage.dart';
import 'discoverPage.dart';

void main() {
  runApp(HeartSleeveApp());
} // main

class HeartSleeveApp extends StatelessWidget {

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
        //home: WritePage(),
        //home: HomePage(),
        home: DiscoverPage(),
    
    );
    
  } // build

}
