import 'package:flutter/material.dart';

class WriteBody extends StatefulWidget {
  
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }

}

class DiaryEntryFormState extends State<WriteBody> {

  final _formKey = GlobalKey<FormState>();
  
  @override 
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,

      child: Column(

        children: [

          TextFormField(

            decoration: InputDecoration(
              hintText: 'title', //should be dynamic if changed to reused code
              fillColor: Color.fromRGBO(160,127,136,0.7),
              filled: true,
            ),

          ),

          //11 - FORMS 33:00

          TextFormField(

          ),

          TextFormField(

          ),

        ],

      ),

    );
  } // build

}
