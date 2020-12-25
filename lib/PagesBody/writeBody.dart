import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';
//import 'package:heartsleeve/JsonModels/diaryEntry.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';
//import 'package:heartsleeve/CustomContainers/screenArguments.dart';

class WriteBody extends StatefulWidget {
  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>(),
      _userTags = [],
      inputCol = Color.fromRGBO(160, 127, 136, 0.7),
      _titleTxtController = TextEditingController(),
      _bodyTxtController = TextEditingController();

  //final _message;

  var _writeTitle, _writeTxtBody;

  /*@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }*/

  @override
  void dispose() {
    _titleTxtController.dispose();
    _bodyTxtController.dispose();
    //tagsTxtController.dispose();

    super.dispose();
  }

  _addTagList(tag) {
    _userTags.add(tag);
  }

  _delTagList(tag) {
    _userTags.remove(tag);
  }

  _getTitle() {
    _writeTitle = _titleTxtController.text;
    return _writeTitle;
  }

  _getTxtBody() {
    _writeTxtBody = _bodyTxtController.text;
    return _writeTxtBody;
  }

  _save(_token) async {
    if (_formKey.currentState.validate()) {
      if (_userTags.length == 0) {
        Scaffold.of(context).showSnackBar(SnackBar(
            content: Text(
          "Tags warn readers of your content. Please don't leave it blank.",
          style: TextStyle(color: Color.fromRGBO(243, 157, 182, 1)),
        )));
      } else {
        var _title = _getTitle();
        var _content = _getTxtBody();

        Map writeData = {
          'title': _title,
          'content': _content,
        };

        for (int i = 0; i < _userTags.length; i++) {
          writeData['tags[$i]'] = _userTags[i];
        }

        try {
          /*var diaryResponse = */await addEntry(writeData, _token);
          Scaffold.of(context)
              .showSnackBar(SnackBar(content: Text("Saving...")));
          
          Future.delayed(Duration(seconds: 2), (){
            Navigator.pushNamed(
              context,
              "/",
              /*arguments: ScreenArguments(
                diaryResponse.message),*/
        
            );
          });
          
        } //1:05:00!!!!

        catch (error) {
          print(error);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var _token = Provider.of<AuthModel>(context, listen: false).token;

    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: formatDecor('title', inputCol),
            maxLines: 1,
            controller: _titleTxtController,
            validator: validateLogin("This field should not be empty"),
          ),
          emptySpace(),
          TextFormField(
            decoration: formatDecor('write something...', inputCol),
            maxLines: null,
            keyboardType: TextInputType.multiline,
            controller: _bodyTxtController,
            validator: validateLogin("This field should not be empty"),
          ),
          emptySpace(),
          TextFieldTags(
            tagsStyler: tagStyleDecor(),
            textFieldStyler: tagFieldDecor(),
            onTag: (tag) {
              if (!_userTags.contains(tag)) {
                _addTagList(tag);
              }
              print(_userTags);
            },
            onDelete: (tag) {
              _delTagList(tag);
              print(_userTags); //tag gives the value!
            },
          ),
          emptySpace(),
          GestureDetector(
            child: customButton("done", Color.fromRGBO(106, 65, 98, 1)),
            onTap: () {
              _save(_token);
            },
          )
        ],
      ),
    );
  } // build

}
