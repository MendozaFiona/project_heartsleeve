import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/sortMenu.dart';
import 'package:heartsleeve/CustomContainers/diaryPreview.dart';

Column homeBody(){

  final _diaryEntries = List<String>.generate(10, (i) => "Entry ${i + 1}");

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
}