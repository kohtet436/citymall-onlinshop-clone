import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:citymallonline/app/translation/app_translation.dart';
import 'package:citymallonline/app/widgets/locationAndDropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../themes/themes.dart';
import '../../widgets/select_language.dart';

class FormPage extends GetView<FormController> {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Obx(
        () => Column(children: [
          Container(
            padding: const EdgeInsets.only(left: 10, top: 10),
            height: 70,
            color: Colors.blue,
            child: Row(
              children: [
                Icon(
                  Icons.person_3_outlined,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Select your prefered language".tr,
                  style: Themes.appBarText,
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SelectLanguage(
                  color: controller.initSelect == Select.myanmar
                      ? Colors.blue
                      : Colors.grey,
                  name: "images/flags/myanmar-flag.png",
                  onTap: () {
                    controller.selectMyanmar();
                    print(controller.initSelect);
                  }),
              SelectLanguage(
                color: controller.initSelect == Select.english
                    ? Colors.blue
                    : Colors.grey,
                name: "images/flags/english-flag.jpg",
                onTap: () {
                  controller.selectEnglish();
                  print(controller.initSelect);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),

          // const ChooseLanguage(),
          Container(
            height: 50,
            color: Colors.blue,
            child: Row(children: const [
              Icon(
                Icons.location_on_sharp,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Location Services",
                style: TextStyle(color: Colors.white),
              )
            ]),
          ),
          const LocationAndDropDwon(),
        ]),
      ),
    );
  }
}
