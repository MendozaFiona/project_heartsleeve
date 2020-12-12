import 'package:flutter/material.dart';

class SortMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container( // CHANGE modify to accomodate two types of sort menu

      child: Row(
        children: [

          Expanded(child: Text('sort', textAlign: TextAlign.center)),

          Expanded(child: Text('latest', textAlign: TextAlign.center)),

          Expanded(child: Text('A-Z', textAlign: TextAlign.center)),

        ],

        //padding

      ), 

      color: Color.fromRGBO(160,127,136,0.7),
      width: 140.0,
      height: 25.0,

    );

  }

}
