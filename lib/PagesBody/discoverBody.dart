import 'package:flutter/material.dart';
import 'package:heartsleeve/sortmenu.dart';
import 'package:heartsleeve/essentials.dart';
import 'package:heartsleeve/CustomContainers/discoverFilter.dart';

class DiscoverBody extends StatefulWidget {
  @override
  DiscoverSearchBarState createState() {
    return DiscoverSearchBarState();
  }
}

class DiscoverSearchBarState extends State<DiscoverBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [

          TextFormField(
            decoration: formatDecor('keyword/s'),
            maxLines: 1,
          ),

          emptySpace(10.0),

          SortMenu(),

          DiscoverFilter(),
          
          /*TextFormField(
            decoration: formatDecor('write something...'),
            maxLines: 13,
          ),*/

          //THIS SHOULD NOT BE A TEST FORM FIELD

          //emptySpace(),
          emptySpace(7.0),

          customButton("SEARCH", Color.fromRGBO(160, 127, 136, 1)),

          /*Container(
            child: ,
          )*/

        ],
      ),
    );
  } // build

}
