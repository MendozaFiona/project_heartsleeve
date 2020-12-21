import 'package:flutter/material.dart';
import 'package:heartsleeve/PagesBody/myAccountEditBody.dart';

class EditPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Edit'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/myAccount");
            },
          )
      ),

      body: 
          Container(
            child: SingleChildScrollView(
              child:EditBody(),
              padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
          )),
        
    );

  } // build

}
