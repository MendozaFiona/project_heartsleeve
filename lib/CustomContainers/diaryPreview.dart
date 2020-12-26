import 'package:flutter/material.dart';
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

  final enInfo;
  final delAction;
  final editAction;

  DiaryPreview({this.enInfo,
    this.delAction,
    this.editAction
  });

  _pubDate(){
    return '${enInfo.created.substring(0, 10)}';
  }

  _pubTime(){
    var words = enInfo.content.length;
    return 'characters: $words';
  }

  @override
  Widget build(BuildContext context) {
    
      return Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Column(
            children:[
              
              GestureDetector(child: Container(
            // CHANGE modify to depend text on parameter sent
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text('${enInfo.title}'),
                    Text('${_pubTime()}'),
                ])),

                decoration: BoxDecoration(
                    color: Color.fromRGBO(160, 127, 136, 0.7),
                    borderRadius: BorderRadius.all(
                        Radius.circular(10))), //PUT THIS IN STYLES FOR REUSAGE!!!

                width: MediaQuery.of(context).size.width * .95,
                height: MediaQuery.of(context).size.height * .1,
              ),
              onTap: ()  async {
              
              },
            ),

            emptySpace(3.0),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("${_pubDate()}"), //dynamic
                  
                  GestureDetector(child:Text("delete"),
                    onTap: ()  async {
                      print(delAction);
                      var res = await showDeleteDialog(context,delAction,enInfo);
                      if(res!=null){
                        Scaffold.of(context)..removeCurrentSnackBar()
                        ..removeCurrentSnackBar()
                          ..showSnackBar(SnackBar(content: Text('$res')));
                      }
                    },
                  ),
              ],)
            )
          ],
 
        )
      );
      
  }
}

showDeleteDialog(BuildContext context,delAction,enInfo) async {
	return showDialog(
		context:context,
		builder:(BuildContext context){
			return AlertDialog(
				title: Text('Deleting Entry'),
				content: Text('Do you want to delete ${enInfo.title}?'),
				actions: [
					TextButton(
						child: Text('Delete'),
						onPressed:() async {
              
							var delRes  = await delAction(enInfo);
              Navigator.of(context).pop(delRes.message);
						}
					),
					TextButton(
						child: Text('Cancel'),
						onPressed:(){
							Navigator.of(context).pop();
						}
					)
				]

			);
		}
	);	
}