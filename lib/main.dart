import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:heartsleeve/btmNavigation.dart';
import 'package:heartsleeve/registerPage.dart';

//compile these all in one method later
/*import 'homePage.dart';
import 'writePage.dart';
import 'discoverPage.dart';
import 'bookmarksPage.dart';
import 'myAccountPage.dart';*/
import 'loginPage.dart';

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
        theme: ThemeData(primaryColor: Color.fromRGBO(106, 65, 98, 1)),
        home: LoginPage(),
        //home: BottomNavBar()
        //home: WritePage(),
        //home: HomePage(),
        //home: DiscoverPage(),
        //home: MyAccountPage(),

        //initialRoute: '/',

        routes: {
          '/register': (context) => RegisterPage(),
          });
  } // build

}
