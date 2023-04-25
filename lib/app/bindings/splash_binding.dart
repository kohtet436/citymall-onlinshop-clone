import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:citymallonline/app/pages/splash_page/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings{
  @override
  void dependencies() {
Get.put(SplashController());


  }

}