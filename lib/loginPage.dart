import 'package:flutter/material.dart';
import 'loginBody.dart';

class LoginPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Login'),
      ),

      body: 
          Container(
            child: SingleChildScrollView(
              child:LoginBody(),
              padding: EdgeInsets.all(50.0),
          )),
        
    );

  } // build

}
