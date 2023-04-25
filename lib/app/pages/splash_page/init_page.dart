import 'package:citymallonline/app/pages/form_page/form_page.dart';
import 'package:citymallonline/app/pages/splash_page/splash_controller.dart';
import 'package:citymallonline/app/pages/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class InitPage extends GetView<SplashController> {
  const InitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Scaffold(
        body: Obx(()=>controller.isloading==true?const SplashPage():const FormPage())
        
        
        ,
      ),
    );
  }
}