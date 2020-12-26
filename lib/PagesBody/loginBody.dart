import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';
import 'package:heartsleeve/Services/loginService.dart';

class LoginBody extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>(),
      inputCol = Color.fromRGBO(160, 127, 136, 0.7),
      passTxtController = TextEditingController(),
      emailTxtController = TextEditingController();

  //String _errMsg = "";

  void _register() {
    Navigator.popAndPushNamed(context, "/register");
  }

  void _btmNav() {
    Navigator.popAndPushNamed(context, "/btmNav");
  }

  _login() async {
    if (_formKey.currentState.validate()) {
      String email = emailTxtController.text;
      String password = passTxtController.text;

      try{
        var loginResponse = await authenticate(email,password);

        if(loginResponse.errMsg == null){
          
          Provider.of<AuthModel>(context, listen: false).login(loginResponse.user,loginResponse.token); //requires user ig
          _btmNav();
        }
        else{
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("${loginResponse.errMsg}",
              style: TextStyle(
                color: Color.fromRGBO(243, 157, 182, 1)
              ),))
          );
        }
      } catch (error){
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("${error.message}",
            style: TextStyle(
              color: Color.fromRGBO(243, 157, 182, 1)
            ),))
        );
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
            child: Image.asset(
              "assets/images/heartsleeve_icon.png",
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Image.asset(
              "assets/images/heartsleeve_slogan.png",
              height: 70.0,
              fit: BoxFit.cover,
            ),
          ),
          emptySpace(),
          TextFormField(
            decoration: formatDecor('email'),
            controller: emailTxtController,
            validator: validateLogin("Enter email"),
            maxLines: 1,
          ),
          emptySpace(10.0),
          TextFormField(
            obscureText: true,
            decoration: formatDecor('password'),
            controller: passTxtController,
            validator: validateLogin("Enter password"),
            maxLines: 1,
          ),
          emptySpace(25.0),
          GestureDetector(
            child: customButton("ENTER", Color.fromRGBO(212, 106, 146, 1),
                MainAxisAlignment.center),
            onTap: _login,
          ),
          emptySpace(10.0),
          GestureDetector(
              child: Text(
                "Register Now",
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(160, 127, 136, 1)),
              ),
              onTap: _register)
        ],
      ),
    );
  } // build

}
