import 'package:flutter/material.dart';
import 'essentials.dart';
import 'homeBody.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Dashboard'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: homeBody(),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),
        
    );

  } // build

}
