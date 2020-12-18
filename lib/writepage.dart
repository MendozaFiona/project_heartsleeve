import 'package:flutter/material.dart';
import 'essentials.dart';
import 'writeBody.dart';

class WritePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Write'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: SingleChildScrollView(
              child:WriteBody()
            ),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),
        
    );

  } // build

}
