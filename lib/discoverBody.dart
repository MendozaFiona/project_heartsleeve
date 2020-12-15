import 'package:flutter/material.dart';
import 'package:heartsleeve/sortmenu.dart';
import 'styles.dart';
import 'discoverFilter.dart';

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

          customButton("SEARCH"),

          /*Container(
            child: ,
          )*/

        ],
      ),
    );
  } // build

}