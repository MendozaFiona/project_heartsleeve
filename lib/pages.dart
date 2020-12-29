import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';

import 'package:heartsleeve/PagesBody/writeBody.dart';
import 'package:heartsleeve/PagesBody/registerBody.dart';
import 'package:heartsleeve/PagesBody/myAccountBody.dart';
import 'package:heartsleeve/PagesBody/loginBody.dart';
import 'package:heartsleeve/PagesBody/homeBody.dart';
import 'package:heartsleeve/PagesBody/discoverBody.dart';

//DISCOVER
class DiscoverPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Discover'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: SingleChildScrollView(
              child:DiscoverBody()
            ),
            padding: EdgeInsets.all(20.0),
          ),
        ]
      ),
        
    );

  } // build

}


//HOME

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Dashboard'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: HomeBody(),
            padding: EdgeInsets.all(20.0),
          ),
          
        ]
      ),
        
    ); 

  } // build

}


//LOGIN
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


//MY ACCOUNT
class MyAccountPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('My Account'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          centerWidget(
            SingleChildScrollView(
              child:MyAccountBody(),
              padding: EdgeInsets.all(20.0),
            ),
            context
          ),
        ]
      ),
        
    );

  } // build

}


//REGISTER
class RegisterPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Register'),
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          )
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


//WRITE
class WritePage extends StatelessWidget{
  final enInfo;

  WritePage({this.enInfo});

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Write'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: SingleChildScrollView(
              child:WriteBody(enInfo: enInfo)
            ),
            padding: EdgeInsets.all(20.0),
          ),
        ]
      ),
        
    );

  } // build

}