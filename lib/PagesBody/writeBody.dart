import 'package:flutter/material.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:textfield_tags/textfield_tags.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';
import 'package:provider/provider.dart';
import 'package:heartsleeve/Models/authModel.dart';

class WriteBody extends StatefulWidget {
  final enInfo;
  WriteBody({this.enInfo});

  @override
  DiaryEntryFormState createState() {
    return DiaryEntryFormState();
  }
}

class DiaryEntryFormState extends State<WriteBody> {
  final _formKey = GlobalKey<FormState>(),
      _userTags = [],
      inputCol = Color.fromRGBO(160, 127, 136, 0.7);
  var _titleTxtController = TextEditingController(),
      _bodyTxtController = TextEditingController();
  var _writeTitle, _writeTxtBody;
  var tagsArr = [];

  bool _isEdit;

  futureData() async {
    var res = await getTags(widget.enInfo.id);

    return res;
  }

  var randomData = Map();

  @override
  void initState() {
    super.initState();

    if (widget.enInfo == null) {
      _titleTxtController.text = "";
      _bodyTxtController.text = "";
      _isEdit = false;
    } else {
      _titleTxtController.text = widget.enInfo.title;
      _bodyTxtController.text = widget.enInfo.content;
      _isEdit = true;
    }

    if (_isEdit == true) {
      futureData();
    }
  }

  @override
  void dispose() {
    _titleTxtController.dispose();
    _bodyTxtController.dispose();
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

  _edit(_writeData, _token) async {
    await updateEntry(widget.enInfo.id, _writeData, _token);

    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Saving...")));

    Future.delayed(Duration(seconds: 2), () {
      Navigator.popAndPushNamed(
        context,
        "/",
      );
    });
  }

  _new(_writeData, _token) async {
    await addEntry(_writeData, _token);

    Scaffold.of(context).showSnackBar(SnackBar(content: Text("Saving...")));

    Future.delayed(Duration(seconds: 2), () {
      Navigator.popAndPushNamed(
        context,
        "/",
      );
    });
  }

  _save(_token) {
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
          if (_isEdit == true) {
            _edit(writeData, _token);
          } else {
            _new(writeData, _token);
          }
        } catch (error) {
          print(error);
        }
      }
    }
  }

  _displayTags() {
    if (tagsArr.length == 0) {
      return ["no-tags"];
    } else {
      return tagsArr;
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
            maxLength: 30,
            controller: _titleTxtController,
            validator: validateLogin("This field should not be empty"),
          ),
          emptySpace(),
          TextFormField(
            decoration: formatDecor('write something...', inputCol),
            maxLines: null,
            maxLength: 65000,
            keyboardType: TextInputType.multiline,
            controller: _bodyTxtController,
            validator: validateLogin("This field should not be empty"),
          ),
          emptySpace(),
          TextFieldTags(
            initialTags: _displayTags(),
            tagsStyler: tagStyleDecor(),
            textFieldStyler: tagFieldDecor(),
            onTag: (tag) {
              if (!_userTags.contains(tag)) {
                _addTagList(tag);
              }
            },
            onDelete: (tag) {
              _delTagList(tag);
              //tag gives the value!
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
