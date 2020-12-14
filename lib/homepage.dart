import 'package:flutter/material.dart';
import 'uniformbg.dart';
import 'btmnavigation.dart';
import 'homebody.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Dashboard'),
      ),

      body: Stack(
        children: [
          UniformBg(),
          Container(
            child: HomeBody(),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),

      bottomNavigationBar: BtmNavigation(),
        
    );

  } // build

}
