import 'package:flutter/material.dart';
//import 'sortmenu.dart';
//import 'diarypreview.dart';
import 'uniformlayout.dart';
import 'btmnavigation.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    
    return Scaffold(
      appBar: AppBar(
          title: Text('Dashboard'),
      ),

      body: UniformLayout(),

      bottomNavigationBar: BtmNavigation(),
        
    );

  } // build

}
