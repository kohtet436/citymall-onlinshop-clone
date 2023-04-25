import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SelectLanguage extends StatelessWidget {
  void Function()? onTap;
  String name;
  Color color;
  SelectLanguage({super.key,this.onTap,required this.name,required this.color});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: onTap,
            //  controller.selectMyanmar,
            child: Container(
              height: 110,
              width: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2,
                    color:color

                      // color: controller.initSelect==Select.myanmar?Colors.blue:Colors.grey,

                      ),
                  borderRadius: BorderRadius.circular(4)),
              child: Image.asset(name),
            ),
          );
  }
}