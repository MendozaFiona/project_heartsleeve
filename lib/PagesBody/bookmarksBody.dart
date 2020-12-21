import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:heartsleeve/CustomContainers/sortMenu.dart';
import 'package:heartsleeve/CustomContainers/diaryPreview.dart';
import 'package:heartsleeve/Models/bookmarksModel.dart';

Consumer bookmarksBody(){

  //final _diaryEntries = List<String>.generate(10, (i) => "Entry ${i + 1}");

  return Consumer<BookmarksModel>(
      builder: (context, bookmark, child){

        var publicEntryID = 1; // change to acquiring id from database

        return Column(
          children: [
            SortMenu(),
            Expanded(
            child: SizedBox(
                
                child: ListView.builder(
                  itemCount: bookmark.bookmarks.length,
                  itemBuilder: (context, index){
                    return DiaryPreview();
                    //put dynamic info sent: title, date/time, words
                  }
                )
            )),

          ],
        );

      }
    );
}