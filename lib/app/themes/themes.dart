import 'package:flutter/material.dart';

class Themes{
static const TextStyle appBarText=TextStyle(fontSize: 17,color: Colors.white);

 static const Decoration dropdownDecoration = ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      side: BorderSide(
        width: 1,
        style: BorderStyle.solid,
        color: Colors.grey,
      ),
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
  );

}