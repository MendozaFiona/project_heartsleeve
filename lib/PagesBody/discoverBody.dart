import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:heartsleeve/CustomContainers/tagsBox.dart';
import 'package:heartsleeve/CustomContainers/titleBox.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:heartsleeve/CustomContainers/discoverEntry.dart';
import 'package:heartsleeve/Models/bookmarksModel.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';

class DiscoverBody extends StatefulWidget {
  @override
  DiscoverBodyState createState() {
    return DiscoverBodyState();
  }
}

class DiscoverBodyState extends State<DiscoverBody> {
//NEED TO REFRESH
  Future<EntryInfo> futureData;

  var randomData = Map();

  @override
  void initState() {
    super.initState();
    futureData = discoverEntry();
  }

  @override
  Widget build(BuildContext context) {

    return Consumer<BookmarksModel>(builder: (context, bookmark, child) {

      return Center(
        child: FutureBuilder<EntryInfo>(
          future: futureData,
          builder: (context, snapshot){
            
            if(snapshot.hasData){

              randomData['title'] = snapshot.data.title;
              randomData['content'] = snapshot.data.content;
              randomData['created'] = snapshot.data.created;

              return Column(
              children: [
                TagsBox(
                  heightBox: 70.0, obj: snapshot.data,
                ),

                TitleBox(defaultTitle: randomData['title']),

                DiscoverEntry(
                  randomData: randomData,
                ),

                emptySpace(10.0),

                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  GestureDetector(
                    child:customButton("another", Color.fromRGBO(106, 65, 98, 1)),
                    onTap: (){
                      setState(() {
                        futureData = discoverEntry();
                      });
                    },
                  ),
                ])
              ],
            );
            }
            
            else if (snapshot.hasError){
              return Text("${snapshot.error}");
            }

            else if(snapshot.data == null){
              return centerWidget(Text('No entry available to display yet.'), context);
            }

            return centerWidget(CircularProgressIndicator(), context);
          }

        )
      );
    });
  } // build

}
