import 'package:flutter/material.dart';
import 'sortmenu.dart';
import 'diarypreview.dart';

class HomeBody extends StatelessWidget {
  //TEMPORARY BEFORE HAVING DATABASE ENTRIES
  final _diaryEntries = List<String>.generate(10, (i) => "Entry ${i + 1}");
  //find a way to pass indices
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SortMenu(),
        Expanded(
            child: SizedBox(
                
                child: ListView.builder(
                  itemCount: _diaryEntries.length,
                  itemBuilder: (context, index){
                    return DiaryPreview();
                  }
                )
            )),
      ],
    );
  } // build

}
