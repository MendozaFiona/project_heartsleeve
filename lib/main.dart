import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'package:heartsleeve/btmNavigation.dart';
import 'package:heartsleeve/pages.dart';
import 'Models/bookmarksModel.dart';

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

    return ChangeNotifierProvider(
      create: (context) => BookmarksModel(),
      child: MaterialApp(
        title: 'heartsleeve',
        theme: ThemeData(primaryColor: Color.fromRGBO(106, 65, 98, 1)),
        home: LoginPage(),
        routes: {
          '/register': (context) => RegisterPage(),
          '/btmNav': (context) => BottomNavBar(),
          '/myAccount': (context) => MyAccountPage(),
          '/edit': (context) => EditPage(),
        }
      )
    
    );
    
      
  } // build

}
