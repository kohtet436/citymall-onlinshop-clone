import 'package:get/get.dart';

import '../../routes/routes.dart';

class SplashController extends GetxController{
final RxBool _isloading= true.obs;
get isloading=>_isloading.value;
 @override
  void onInit() {
    loading();
    super.onInit();
  }
Future<void> loading()async{
Future.delayed(const Duration(seconds: 10),(){
_isloading.value=false;
});

}








}