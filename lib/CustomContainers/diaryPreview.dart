import 'package:flutter/material.dart';
import 'package:heartsleeve/JsonModels/tags.dart';
import 'package:heartsleeve/Services/tagsService.dart';
import 'package:heartsleeve/essentials.dart';

class DiaryPreview extends StatelessWidget {
  //Future<Tags> _tagFuture;

  /*initState() {
    super.initState();
    _tagFuture = getTags();
  }*/

  //inside widget build

  /*
  
  FutureBuilder<Tags>(
    future: _tagFuture,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text('Cannot load tags');
      } else if (snaphsot.hasData){
        var tags = snapshot.data.tags; //probably should be an array
        //probably change in tags.dart where query is (where entry_id==***)
        return Text(${var tags}); //or other widget
      }
      return Text('Loading Tags...');
    }
  )
  
  
  */

  @override
  Widget build(BuildContext context) {
    
      return Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Column(
            children:[
              
              GestureDetector(child: Container(
            // CHANGE modify to depend text on parameter sent
                child: Column(children: [
                  Row(
                    children: [
                      Expanded(child: Text('TITLE', textAlign: TextAlign.center)),
                    ], // children
                  ),
                  emptySpace(16.0),
                  Row(
                    children: [
                      Expanded(child: Text('this is a preview', textAlign: TextAlign.center)),
                    ], // children
                  )
                ]),

                decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 127, 136, 0.7),
                    borderRadius: BorderRadius.all(
                        Radius.circular(15))), //PUT THIS IN STYLES FOR REUSAGE!!!

                width: MediaQuery.of(context).size.width * .95,
                height: MediaQuery.of(context).size.height * .15,
              ),
              onTap: () {
                print("you tapped this"); //test
              },
            ),

            emptySpace(3.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("date published"), //dynamic
                  
                  GestureDetector(child:Text("delete"),
                    onTap: () {
                      print("you deleted this"); //test
                    },
                  ),
              ],)
            )
          ],
 
        )
      );
      /*onTap: () {
        print("you tapped this");
      },
    );*/



    /*return InkWell(
      child: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Container(
            // CHANGE modify to depend text on parameter sent
            child: Column(children: [
              Row(
                children: [
                  Expanded(child: Text('date', textAlign: TextAlign.center)),
                  Expanded(child: Text('TITLE', textAlign: TextAlign.center)),
                  Expanded(child: Text('time', textAlign: TextAlign.center)),
                ], // children
              ),
              Row(
                children: [
                  Expanded(
                      child: Text('this is a preview',
                          textAlign: TextAlign.center)),
                ], // children
              )
            ]),

            decoration: BoxDecoration(
                color: Color.fromRGBO(160, 127, 136, 0.7),
                borderRadius: BorderRadius.all(
                    Radius.circular(15))), //PUT THIS IN STYLES FOR REUSAGE!!!

            width: MediaQuery.of(context).size.width * .95,
            height: MediaQuery.of(context).size.height * .15,
          )),
      onTap: () {
        print("you tapped this");
      },
    );*/
  }
}
