import 'package:flutter/material.dart';
import 'essentials.dart';

class RegisterBody extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

//CUSTOM BUTTON DOESNT SHOW IF ENABLED OR DISABLED!!!!

class RegisterFormState extends State<RegisterBody> {
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
          emptySpace(10.0),
          TextFormField(
            decoration: formatDecor('first name'),
            maxLines: 1,
            validator: validateForm(nameExp),
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('last name'),
            maxLines: 1,
            validator: validateForm(nameExp),
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('username'),
            maxLines: 1,
            validator: validateForm(unameExp),
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('email'),
            maxLines: 1,
            validator: validateForm(emailExp, "Please enter a valid email"),
          ),
          emptySpace(5.0),
          TextFormField(
            obscureText: true,
            decoration: formatDecor('password'),
            controller: passTxtController,
            maxLines: 1,
            validator:
                validateForm(passExp, "Password must be 8-20 characters long"),
          ),
          emptySpace(5.0),
          TextFormField(
            obscureText: true,
            decoration: formatDecor('confirm password'),
            maxLines: 1,
            validator: validateForm(passExp, "Password does not match"),
          ),
          emptySpace(6.0),
          Row(
            children: [
              Checkbox(
                value: _isAccepted,
                onChanged: (isAccepted) {
                  setState(() {
                    _isAccepted = isAccepted;
                  });
                },
              ),
              Text(
                  "By clicking Register, you agree to\nour terms and data policy")
            ],
          ),
          emptySpace(8.0),
          GestureDetector(
            child: customButton("REGISTER", Color.fromRGBO(212, 106, 146, 1),
                MainAxisAlignment.center),
            onTap: _isAccepted?_register:null,
          )
        ],
      ),
    );
  } // build

}
