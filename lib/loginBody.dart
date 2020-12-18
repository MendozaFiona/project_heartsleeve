import 'package:flutter/material.dart';
import 'essentials.dart';

class LoginBody extends StatefulWidget {
  @override
  LoginFormState createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  final inputCol = Color.fromRGBO(160, 127, 136, 0.7);

  void _register() {
    Navigator.popAndPushNamed(context, "/register");
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
            decoration: formatDecor('username'),
            maxLines: 1,
          ),
          emptySpace(10.0),
          TextFormField(
            decoration: formatDecor('password'),
            maxLines: 1,
          ),
          emptySpace(25.0),
          customButton("ENTER", Color.fromRGBO(212, 106, 146, 1),
              MainAxisAlignment.center),
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
