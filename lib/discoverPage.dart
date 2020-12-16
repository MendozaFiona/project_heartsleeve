import 'package:flutter/material.dart';
import 'styles.dart';
import 'discoverBody.dart';

class DiscoverPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Discover'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: SingleChildScrollView(
              child:DiscoverBody()
            ),
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),
        
    );

  } // build

}