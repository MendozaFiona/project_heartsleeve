import 'package:flutter/material.dart';
import 'styles.dart';
import 'myAccountBody.dart';

class MyAccountPage extends StatelessWidget{ //probably have to change to stateful as it has edit option

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
            child: myAccountBody(),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),
        
    );

  } // build

}
