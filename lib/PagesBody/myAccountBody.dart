import 'package:flutter/material.dart';
import 'package:heartsleeve/myAccountBox.dart';
import 'package:heartsleeve/myAccountTitleBox.dart';
import 'package:heartsleeve/essentials.dart';

class MyAccountBody extends StatefulWidget {
  @override
  AccountSettingsState createState() {
    return AccountSettingsState();
  }
}

class AccountSettingsState extends State<MyAccountBody> {
  // final _formKey = GlobalKey<FormState>(); //-> if using form
  
  void _login() {
    Navigator.popAndPushNamed(context, "/");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [

      //THESE ARE TEMPORARY, PLACEHOLDERS

      TitleBox(defaultTitle: "ACCOUNT INFORMATION",),

      MyAccountBox(fxn: "accountInfo"), //clicking edit should redirect to a profile edit page

      TitleBox(defaultTitle: "PRIVACY AND SAFETY",),

      MyAccountBox(fxn: "privacySafety",), //clicking edit should automatically change setting

      TitleBox(defaultTitle: "DELETE MY ACCOUNT",),

      emptySpace(10.0),

      Padding(
        padding: EdgeInsets.only(right:10.0),

        child: GestureDetector(
          child:customButton("LOG OUT", Color.fromRGBO(160, 127, 136, 1)),
          onTap: _login,
        )
      
      ),
    ],
  );
  }
}
