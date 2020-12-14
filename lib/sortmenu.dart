import 'package:flutter/material.dart';

//CODE FOR THE SORT MENU CONTAINER
class SortMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Align(
      alignment: Alignment.centerLeft,
      
      child: Padding(
        padding: EdgeInsets.only(bottom: 10.0),
        child: Container( // CHANGE modify to accomodate two types of sort menu

          child: Row(
            children: [

              Expanded(child: Text('sort', textAlign: TextAlign.center)),

              Expanded(child: Text('latest', textAlign: TextAlign.center)),

              Expanded(child: Text('A-Z', textAlign: TextAlign.center)),

            ],

            //padding

          ), 

          decoration: BoxDecoration(
            color: Color.fromRGBO(160,127,136,0.7),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),

          width: MediaQuery.of(context).size.width * 0.5,
          height: 35.0/*MediaQuery.of(context).size.height * 0.05*/,

        )
      )
    );

  }

}
