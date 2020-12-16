import 'package:flutter/material.dart';
import 'package:heartsleeve/myAccountBox.dart';
import 'package:heartsleeve/myAccountTitleBox.dart';

class MyAccountBody extends StatefulWidget {
  @override
  AccountSettingsState createState() {
    return AccountSettingsState();
  }
}

class AccountSettingsState extends State<MyAccountBody> {
  // final _formKey = GlobalKey<FormState>(); //-> if using form
  
  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      //emptySpace(10.0),

      //THESE ARE TEMPORARY, PLACEHOLDERS

      TitleBox(),

      MyAccountBox(), //clicking edit should redirect to a profile edit page

      TitleBox(),

      MyAccountBox(), //clicking edit should automatically change setting

      TitleBox(),

      //customButton("SEARCH"),
    ],
  );
  }
}

/*Column myAccountBody() {
  return Column(
    children: [
      //emptySpace(10.0),

      //THESE ARE TEMPORARY, PLACEHOLDERS

      TitleBox(),

      MyAccountBox(), //clicking edit should redirect to a profile edit page

      TitleBox(),

      MyAccountBox(), //clicking edit should automatically change setting

      TitleBox(),

      //customButton("SEARCH"),
    ],
  );
}*/
