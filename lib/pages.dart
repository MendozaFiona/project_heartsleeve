import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';

import 'package:heartsleeve/PagesBody/writeBody.dart';
import 'package:heartsleeve/PagesBody/registerBody.dart';
import 'package:heartsleeve/PagesBody/myAccountBody.dart';
import 'package:heartsleeve/PagesBody/loginBody.dart';
import 'package:heartsleeve/PagesBody/homeBody.dart';
import 'package:heartsleeve/PagesBody/discoverBody.dart';
import 'package:heartsleeve/PagesBody/myAccountEditBody.dart';
import 'package:heartsleeve/PagesBody/bookmarksBody.dart';


//BOOKMARKS
class BookmarksPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Bookmarks'),
      ),

      body: Stack(
        children: [
          uniformBg(),
          Container(
            child: bookmarksBody(), //both home and bookmarks have same layout, different data
            padding: EdgeInsets.all(20.0),
          ),
        ]
      ),
        
    );

  } // build

}


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


//MYACCOUNT EDIT
class EditPage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
          title: Text('Edit'),
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
              child:EditBody(),
              padding: EdgeInsets.fromLTRB(50, 40, 50, 40),
          )),
        
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
            child: homeBody(),
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
          Container(
            child: SingleChildScrollView(
              child:MyAccountBody(),
              padding: EdgeInsets.all(20.0),
            )
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
              Navigator.popAndPushNamed(context, "/");
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
              child:WriteBody()
            ),
            padding: EdgeInsets.all(20.0),
          ),
        ]
      ),
        
    );

  } // build

}