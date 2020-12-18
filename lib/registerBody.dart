import 'package:flutter/material.dart';
import 'styles.dart';

class RegisterBody extends StatefulWidget {
  @override
  RegisterFormState createState() {
    return RegisterFormState();
  }
}

class RegisterFormState extends State<RegisterBody> {
  final _formKey = GlobalKey<FormState>();
  final inputCol = Color.fromRGBO(160, 127, 136, 0.7);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Image.asset("assets/images/heartsleeve_icon.png",
                height: 60.0,
                fit: BoxFit.cover,
              ),
            
                Image.asset("assets/images/heartsleeve_slogan.png",
                height: 20.0,
                fit: BoxFit.cover,
                ),
            
            ])
            
          ),

          emptySpace(10.0),

          TextFormField(
            decoration: formatDecor('name'),
            maxLines: 1,
          ),

          emptySpace(5.0),

          TextFormField(
            decoration: formatDecor('username'),
            maxLines: 1,
          ),

          emptySpace(5.0),

          TextFormField(
            decoration: formatDecor('email'),
            maxLines: 1,
          ),

          emptySpace(5.0),

          TextFormField(
            decoration: formatDecor('birthday'),
            maxLines: 1,
          ),
          
          emptySpace(5.0),

          TextFormField(
            decoration: formatDecor('password'),
            maxLines: 1,
          ),
          
          emptySpace(5.0),

          TextFormField(
            decoration: formatDecor('confirm password'),
            maxLines: 1,
          ),

          emptySpace(18.0),

          Center(child:Text("BY REGISTERING YOU ARE.... this is a temp text :D")),

          emptySpace(20.0),
          
          customButton("REGISTER", Color.fromRGBO(212, 106, 146, 1), MainAxisAlignment.center),
          
          

        ],
      ),
    );
  } // build

}
