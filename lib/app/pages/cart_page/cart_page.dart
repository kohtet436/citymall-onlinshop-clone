import 'package:cached_network_image/cached_network_image.dart';
import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:citymallonline/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class CartPage extends GetView<AllPageController> {
  CartPage({super.key,});

  @override
  Widget build(BuildContext context) {
    // print("a=>${controller.cartList.keys.toString()}");
    // final current=controller.findProdById(controller.cartList.keys.toString());
    // print("current ${current}");
  // controller.cartList.forEach((key, value) =>print("io=>${ key.toString()}",));
    
    return Scaffold(
      appBar: AppBar(title: Text("Cart")),
      // body: ListView.builder(
      //   itemCount: controller.cartList.length,
      //   itemBuilder: (context,index)=>
      // body:

      // )
    );
  }}