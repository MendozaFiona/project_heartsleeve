import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/myAccountBox.dart';
import 'package:heartsleeve/CustomContainers/myAccountTitleBox.dart';
//import 'package:heartsleeve/PagesBody/homeBody.dart';
import 'package:provider/provider.dart';

//import 'package:heartsleeve/CustomContainers/sortMenu.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:heartsleeve/CustomContainers/discoverEntry.dart';
import 'package:heartsleeve/Models/bookmarksModel.dart';
//import 'package:heartsleeve/CustomContainers/diaryPreview.dart';

//CHANGE THIS TO A RANDOM DIARY ENTRY PROVIDER~~~
class DiscoverBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    //final _publicEntries = List<String>.generate(10, (i) => "Entry ${i + 1}");

    return Consumer<BookmarksModel>(
      builder: (context, bookmark, child){

        var publicEntryID = 1; // change to acquiring id from database

        return Column(
          children: [
            
            MyAccountBox(heightBox: 70.0,),

            TitleBox(defaultTitle: "temp title of entry"),        

            //pay attention to this
            SingleChildScrollView(child: DiscoverEntry()),
            
            Row (
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButton("another", Color.fromRGBO(106, 65, 98, 1)),
                IconButton(
                  icon: Icon(
                    /*(bookmark.bookmarks.contains(compare index))*/ //23:00 provider, continue
                    Icons.favorite,
                    size: 30.0,
                    color: Color.fromRGBO(160, 127, 136, 1),
                  ),
                  onPressed: (){
                    //COMPARE IF PUBLICENTRY ID MATCHES ANY IN THE BOOKMARKS PAGE
                    /*if(bookmark.bookmarks.contains(compare index)){
                        bookmark.remove(index here);
                      } else {
                        bookmark.add(index here);
                      }*/
                  
                  },
                )
              
            ])

          ],
        );

      }
    );
    
  
  } // build

}
