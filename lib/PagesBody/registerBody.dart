import 'package:flutter/material.dart';
import 'package:heartsleeve/Services/registerService.dart';
import 'package:heartsleeve/essentials.dart';

class RegisterBody extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterBody> {
  final _formKey = GlobalKey<FormState>(),
      inputCol = Color.fromRGBO(160, 127, 136, 0.7),
      nameExp = RegExp(r"^[a-z A-Z,.\-]+$"),
      unameExp = RegExp(r"[a-zA-Z0-9]"),
      emailExp = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"),
      passExp = RegExp("^(?=.{8,20})[a-zA-Z0-9._]"),
      passTxtController = TextEditingController();
  final fnameTxtController = TextEditingController(),
      lnameTxtController = TextEditingController(),
      usernameTxtController = TextEditingController(),
      emailTxtController = TextEditingController();
  var pass;

  bool _isAccepted = false;

  @override
  void dispose() {
    passTxtController.dispose();
    fnameTxtController.dispose();
    lnameTxtController.dispose();
    usernameTxtController.dispose();
    emailTxtController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    passTxtController.addListener(() {
      setState(() {
        pass = passTxtController.text;
      });
    });

    super.initState();
  }

  _register() async {
    if (_formKey.currentState.validate()) {
      Map _userData = {
        'fname': fnameTxtController.text,
        'lname': lnameTxtController.text,
        'username': usernameTxtController.text,
        'email': emailTxtController.text,
        'password': passTxtController.text,
      };

      try{
        var res = await addUser(_userData);
        
        if (res.message != "Cannot process request. Input errors.") {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text("Registration Successful")));
          Future.delayed(Duration(seconds: 1), () {
            Navigator.pop(context);
          });
        } else {
          Scaffold.of(context).showSnackBar(SnackBar(
              content: Text(
            "The email has already been taken",
            style: TextStyle(color: Color.fromRGBO(243, 157, 182, 1)),
          )));
        }
      }catch (error) {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
          "${error.message}",
          style: TextStyle(color: Color.fromRGBO(243, 157, 182, 1)),
        )));
      }
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
            controller: fnameTxtController,
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('last name'),
            maxLines: 1,
            validator: validateForm(nameExp),
            controller: lnameTxtController,
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('username'),
            maxLines: 1,
            validator: validateForm(unameExp),
            controller: usernameTxtController,
          ),
          emptySpace(5.0),
          TextFormField(
            decoration: formatDecor('email'),
            maxLines: 1,
            validator: validateForm(emailExp, "Please enter a valid email"),
            controller: emailTxtController,
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
            validator: validateForm(pass, "Password does not match", "confirm"),
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
            onTap: _isAccepted ? _register : null,
          )
        ],
      ),
    );
  } // build

}
