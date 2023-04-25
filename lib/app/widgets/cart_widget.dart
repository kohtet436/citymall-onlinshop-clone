import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:citymallonline/app/routes/routes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../pages/home_page/home_page_controller.dart';

class CartWidget extends GetView<HomePageController> {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      controller.cartList.entries.map((e)=>print(e.value));
      controller.cartList.forEach((key, value) => print(value),);
      print("cart=> ${controller.cartList.length}");
      Get.toNamed(Routes.cartPage);
      },
      child: Stack(
        children: [
          Container(height: 50,width: 50,
          // color: Colors.amber,
          ),
           const Positioned(
            top: 20,left: 10,
             child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.blue,
                ),
           ),
              Positioned(
                top: 10,
                left: 5,
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.center,
                height: 18,width: 18,
                decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle),
                    
                child: Obx(()=> Text(controller.cartList.keys.length.toString(),style: TextStyle(fontSize: 10,color: Colors.white),)),
                ),
              )
        ],
      ),
    );
  }
}