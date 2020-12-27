import 'package:flutter/material.dart';
import 'package:heartsleeve/JsonModels/diaryEntry.dart';
import 'package:heartsleeve/Services/diaryEntryService.dart';
import 'package:heartsleeve/essentials.dart';

class DiscoverEntry extends StatefulWidget {
  final randomData;

  DiscoverEntry({this.randomData});

  @override
  DiscoverEntryState createState() {
    return DiscoverEntryState();
  }
}

class DiscoverEntryState extends State<DiscoverEntry> {

  _pubDate(_char) {
    return '${_char.substring(0, 10)}';
  }

  _pubChar(_char) {
    var words = _char.length;
    return 'characters: $words';
  }

  @override
  Widget build(BuildContext context) {


    var _content = widget.randomData['content'],
        _created = widget.randomData['created'],
        _date = _pubDate(_created),
        _words = _pubChar(_content);

    return InkWell(
      child: Padding(
          padding: EdgeInsets.only(bottom: 10.0),
          child: Container( // this should depend on length of diary!
            // CHANGE modify to depend text on parameter sent
            child: Padding(
              child: Column(children: [
                Row(
                  children: [
                    Expanded(child: Text(_date, textAlign: TextAlign.center)),
                    Expanded(child: Text(_words, textAlign: TextAlign.center)),
                  ], // children
                ),
                emptySpace(15.0),
                Row(
                  children: [
                    Expanded(
                        child: Text(_content, textAlign: TextAlign.center)),
                  ], // children
                )
              ]),
              padding: EdgeInsets.symmetric(vertical: 10),
            ),

            decoration: BoxDecoration(
                color: Color.fromRGBO(160, 127, 136, 0.7),
                borderRadius: BorderRadius.all(Radius.circular(15))),

            width: MediaQuery.of(context).size.width * .95,
            height: MediaQuery.of(context).size.height * .45,
          )),
      onTap: () {},
    );
  }
}
