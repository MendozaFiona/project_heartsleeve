import 'package:flutter/material.dart';
import 'package:heartsleeve/CustomContainers/titleBox.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';

class MyAccountBody extends StatelessWidget {
  // final _formKey = GlobalKey<FormState>(); //-> if using form

  @override
  Widget build(BuildContext context) {

    void _login() {
      Provider.of<AuthModel>(context, listen: false).logout();
      Navigator.popAndPushNamed(context, "/");
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        TitleBox(
          defaultTitle: "delete my account",
        ),

        emptySpace(10.0),

        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: customButton("log out", Color.fromRGBO(106, 65, 98, 1)),
              onTap: _login,
            )),
      ],
    );
  }
}
