import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ContactUsCard extends StatelessWidget {
  String name;
  IconData icon;
   ContactUsCard({
    required this.name,required this.icon,
    super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      width: 86,
      
      child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),  
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
          Icon(icon,size: 33,),
          Text(name,style: const TextStyle(fontSize: 12,overflow: TextOverflow.ellipsis),)
          
           
        ],),
      ),
    );
  }
}