import 'package:flutter/material.dart';
import 'styles.dart';
import 'myAccountBody.dart';

class MyAccountPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('My Account'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: MyAccountBody(),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),
        
    );

  } // build

}
