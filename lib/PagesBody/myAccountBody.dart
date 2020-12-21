import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/myAccountBox.dart';
import 'package:heartsleeve/CustomContainers/myAccountTitleBox.dart';
import 'package:heartsleeve/essentials.dart';


class MyAccountBody extends StatelessWidget {
  // final _formKey = GlobalKey<FormState>(); //-> if using form

  @override
  Widget build(BuildContext context) {

    void _login() {
      Navigator.popAndPushNamed(context, "/");
    }

    void _accEdit() {
      Navigator.pushNamed(context, "/edit");
    }

    return Column(
      children: [
        //THESE ARE TEMPORARY, PLACEHOLDERS

        TitleBox(
          defaultTitle: "ACCOUNT INFORMATION",
        ),

        MyAccountBox(
          fxn: "accountInfo",
          heightBox: 120.0,
        ), //clicking edit should redirect to a profile edit page

        Row(
          children: [
            Expanded(
              child: GestureDetector(
                child: customButton(
                    "edit", Color.fromRGBO(160, 127, 136, 1), MainAxisAlignment.center, 16.0),
                onTap: _accEdit,
            ))
          ], // children
        ),

        emptySpace(8.0),

        TitleBox(
          defaultTitle: "PRIVACY AND SAFETY",
        ),

        MyAccountBox(
          fxn: "privacySafety",
          heightBox: 120.0,
        ),
        
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                child: customButton(
                    "edit", Color.fromRGBO(160, 127, 136, 1), MainAxisAlignment.center, 16.0),
                onTap: _accEdit,
            ))
          ], // children
        ), //clicking edit should automatically change setting

        emptySpace(8.0),

        TitleBox(
          defaultTitle: "DELETE MY ACCOUNT",
        ),

        emptySpace(10.0),

        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: customButton("log out", Color.fromRGBO(160, 127, 136, 1)),
              onTap: _login,
            )),
      ],
    );
  }
}

/*_test(context){
    Navigator.popAndPushNamed(context, "/edit");
}*/

/*class MyAccountBody extends StatefulWidget {
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

      MyAccountBox(fxn: "accountInfo", heightBox: 120.0,), //clicking edit should redirect to a profile edit page

      TitleBox(defaultTitle: "PRIVACY AND SAFETY",),

      MyAccountBox(fxn: "privacySafety", heightBox: 120.0,), //clicking edit should automatically change setting

      TitleBox(defaultTitle: "DELETE MY ACCOUNT",),

      emptySpace(10.0),

      Padding(
        padding: EdgeInsets.only(right:10.0),

        child: GestureDetector(
          child:customButton("log out", Color.fromRGBO(160, 127, 136, 1)),
          onTap: _login,
        )
      
      ),
    ],
  );
  }
}*/
