import 'package:flutter/material.dart';
import 'styles.dart';
import 'btmNavigation.dart';
import 'homeBody.dart';

class BookmarksPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Bookmarks'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: homeBody(), //both home and bookmarks have same layout, different data
            padding: EdgeInsets.all(15.0),
          ),
        ]
      ),

      bottomNavigationBar: btmNavigation(),
        
    );

  } // build

}
