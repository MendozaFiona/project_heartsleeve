import 'package:flutter/material.dart';
import 'package:heartsleeve/myAccountBox.dart';
import 'sortMenu.dart';
import 'styles.dart';

Column myAccountBody(){

  return Column(
        children: [

          emptySpace(10.0),

          //THESE ARE TEMPORARY, PLACEHOLDERS

          SortMenu(),

          MyAccountBox(),

          SortMenu(),

          MyAccountBox(),

          SortMenu(),

          //customButton("SEARCH"),

        ],
    );
}