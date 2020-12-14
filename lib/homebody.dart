import 'package:flutter/material.dart';
import 'sortmenu.dart';
import 'diarypreview.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SortMenu(),

          Expanded( child: SizedBox( child: ListView(
            children:[
              DiaryPreview(),
              DiaryPreview(),
            ]
          )
          )),

        ],

    );
  } // build

}
