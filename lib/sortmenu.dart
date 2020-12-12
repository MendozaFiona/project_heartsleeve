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

      ), 

      width: 140.0,

    );

  }

}
