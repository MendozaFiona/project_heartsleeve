import 'package:flutter/material.dart';
import 'uniformbg.dart';
import 'btmnavigation.dart';
import 'writebody.dart';

class WritePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Write'),
      ),

      body: Stack(
        children: [
          UniformBg(),
          Container(
            child: SingleChildScrollView(
              child:WriteBody()
            ),
          ),
        ]
      ),

      bottomNavigationBar: BtmNavigation(),
        
    );

  } // build

}
