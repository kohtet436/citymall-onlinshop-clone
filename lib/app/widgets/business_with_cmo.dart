import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BusinessWithCMO extends StatelessWidget {
  IconData? icon;String name;
   BusinessWithCMO({
    this.icon,required this.name,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Card(child: Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon),Text(name,style: TextStyle(color: Colors.red),)],),
    ),);
  }
}