import 'package:flutter/material.dart';

class DiaryPreview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: EdgeInsets.only(right: 10.0, left: 10.0, bottom: 5.0),

      child: Container( // CHANGE modify to accomodate two types of sort menu
        child: Column(
          children: [
            Row(
              children: [

                Expanded(child: Text('date', textAlign: TextAlign.center)),

                Expanded(child: Text('TITLE', textAlign: TextAlign.center)),

                Expanded(child: Text('time', textAlign: TextAlign.center)),

              ], // children

            //padding

          ),

          Row(
              children: [

                Expanded(child: Text('this is a preview', textAlign: TextAlign.center)),

              ], // children

          )]
        ),

        color: Color.fromRGBO(160,127,136,0.7),
        width: MediaQuery.of(context).size.width * .95,
        height: MediaQuery.of(context).size.height * .15, 

      )
    );

  }

}
