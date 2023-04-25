import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:get/get.dart';

class FormBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FormController());
    // TODO: implement dependencies
  }

}