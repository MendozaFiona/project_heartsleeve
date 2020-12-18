import 'package:flutter/material.dart';
import 'registerBody.dart';

class RegisterPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Register'),
      ),

      body: 
          Container(
            child: SingleChildScrollView(
              child:RegisterBody(),
              padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
          )),
        
    );

  } // build

}
