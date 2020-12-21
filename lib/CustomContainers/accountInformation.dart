import 'package:flutter/material.dart';
import 'package:heartsleeve/PagesBody/myAccountBody.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:heartsleeve/pages.dart';

//GET FROM DATABASE
String _defaultName = "You haven't input a name yet",
    _defUname = "No username yet",
    _defEmail = "No email linked",
    _defBday = "No birthday information saved";

changeName() {
  _defaultName = " " + "Juan dela Cruz";
  _defUname = " " + "SecretJuan";
  _defEmail = " " + "Se******an@gmail.com";
  _defBday = " " + "October 29, 2001";
}

_reroute() {
  print("passed reroute");
  //Navigator.popAndPushNamed(context, "/edit");
  print("passed post reroute");
} //delete after

//USE PROVIDER FOR THIS!!!!

accountInfo() {
  changeName();

  //final _
  return Column(children: [
    Row(
      children: [
        Text('name:', textAlign: TextAlign.left),
        Text(_defaultName, textAlign: TextAlign.left),
        //SizedBox(width: 170)
      ], // children
    ),
    Row(
      children: [
        Text('username:', textAlign: TextAlign.left),
        Text(_defUname, textAlign: TextAlign.left),
        //SizedBox(width: 120)
      ], // children
    ),
    Row(
      children: [
        Text('email:', textAlign: TextAlign.left),
        Text(_defEmail, textAlign: TextAlign.left),
        //SizedBox(width:170)
      ], // children
    ),
    Row(
      children: [
        Text('birthday:', textAlign: TextAlign.left),
        Text(_defBday, textAlign: TextAlign.left),
        //SizedBox(width:140)
      ], // children
    ),
    
  ]);
}
