import 'package:flutter/material.dart';
import 'sortmenu.dart';
import 'diarypreview.dart';

class Home extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
        
        appBar: AppBar(
          
          title: Text('Dashboard'),
        
        ),

        body: Container(

          child: Column(
            
            children: [

              SortMenu(),

              DiaryPreview(),


            ],
            
          )
      
        )

    );

  } // build

}
