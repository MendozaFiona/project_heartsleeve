import 'package:flutter/material.dart';

class DiscoverEntry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return InkWell(child: Padding(
      padding: EdgeInsets.only(bottom: 10.0),

      child: Container( // CHANGE modify to depend text on parameter sent
        child: Padding( child: Column(
          children: [
            Row(
              children: [

                Expanded(child: Text('date', textAlign: TextAlign.center)),

                Expanded(child: Text('TITLE', textAlign: TextAlign.center)),

                Expanded(child: Text('time', textAlign: TextAlign.center)),

              ], // children

            ),

            Row(
                children: [

                  Expanded(child: Text('this is a preview', textAlign: TextAlign.center)),

                ], // children

            )
          ]
        ), padding: EdgeInsets.symmetric(vertical: 10),),

        decoration: BoxDecoration(
          color: Color.fromRGBO(160,127,136,0.7),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),

        width: MediaQuery.of(context).size.width * .95,
        height: MediaQuery.of(context).size.height * .45,

      )
    ),
    
    onTap: (){
      
    },

    );

  }

}
