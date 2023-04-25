import 'package:citymallonline/app/pages/category_page.dart/category_controller.dart';
import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:get/get.dart';

class AllBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AllPageController());
    // Get.lazyPut(() => CategoryController());
    // TODO: implement dependencies
  }
  
}