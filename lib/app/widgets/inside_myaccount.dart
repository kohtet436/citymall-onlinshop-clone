import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InsideMyAccount extends StatelessWidget {
  final IconData icon;
final String name;
  const InsideMyAccount({
   required this.icon,
  required this.name,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Icon(icon ,size: 30,color: Colors.grey,),
      SizedBox(height: 17,),

      Text(name,)
    ],);
  }
}