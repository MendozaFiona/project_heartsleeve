import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';

class EditBody extends StatefulWidget {
  @override
  EditFormState createState() {
    return EditFormState();
  }
}

//CUSTOM BUTTON DOESNT SHOW IF ENABLED OR DISABLED!!!!

class EditFormState extends State<EditBody> {
  final _formKey = GlobalKey<FormState>(),
      inputCol = Color.fromRGBO(160, 127, 136, 0.7),
      nameExp = RegExp(r"^[a-z A-Z,.\-]+$"),
      unameExp = RegExp(r"[a-zA-Z0-9]"),
      emailExp = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"), //CORRECT
      passExp = RegExp("^(?=.{8,20})[a-zA-Z0-9._]"), //CORRECT
      passTxtController = TextEditingController();

  bool _isAccepted = false;

  @override
  void dispose() {
    passTxtController.dispose();
    super.dispose();
  }

  _register(){
    if (_formKey.currentState.validate()) {
      Scaffold
        .of(context).showSnackBar(
          SnackBar(content: Text("Saving...")));
    }

  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/images/heartsleeve_icon.png",
              height: 60.0,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "assets/images/heartsleeve_slogan.png",
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ])),

          emptySpace(15.0),

          labelTxt("first name"),

          TextFormField(
            decoration: formatDecor('first name'),
            maxLines: 1,
            validator: validateForm(nameExp),
          ),

          emptySpace(5.0),

          labelTxt("last name"),

          TextFormField(
            decoration: formatDecor('last name'),
            maxLines: 1,
            validator: validateForm(nameExp),
          ),

          emptySpace(5.0),

          labelTxt("username"),

          TextFormField(
            decoration: formatDecor('username'),
            maxLines: 1,
            validator: validateForm(unameExp),
          ),

          emptySpace(5.0),

          labelTxt("email"),

          TextFormField(
            decoration: formatDecor('email'),
            maxLines: 1,
            validator: validateForm(emailExp, "Please enter a valid email"),
          ),

          emptySpace(25.0),

          GestureDetector(
            child: customButton("save changes", Color.fromRGBO(212, 106, 146, 1),
                MainAxisAlignment.center),
            onTap: _isAccepted?_register:null, //change
          )
        ],
      ),
    );
  } // build

}
