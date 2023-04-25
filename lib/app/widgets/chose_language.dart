import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         
          GestureDetector(
            onTap: () {},
            // controller.selectEnglish,
            child: Container(
              width: 150,
              height: 110,
              decoration: BoxDecoration(
                  border: Border.all(
                    color:

                        // controller.initSelect==Select.english?    Colors.blue:

                        Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(4)),
              child: Image.asset("images/flags/english-flag.jpg"),
            ),
          )
        ],
      ),
    );
  }
}
