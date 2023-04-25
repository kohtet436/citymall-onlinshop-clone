import 'package:cached_network_image/cached_network_image.dart';
import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:citymallonline/app/pages/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProductDetailPage extends GetView<HomePageController> {
  
   ProductDetailPage( {super.key,});

  @override
  Widget build(BuildContext context) {

    var index = Get.arguments;
    print("index=>$index");
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 230,
                width: Get.size.width,
                // color: Colors.red,
                child: CachedNetworkImage(
                  fit: BoxFit.contain,
                  height: 70,
                  width: 80,
                  imageUrl: controller.products[index].image.toString(),
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      Container(
                    margin:const EdgeInsets.all(50),
                    height: 2,
                    width: 2,
                    child:
                        CircularProgressIndicator(value: downloadProgress.progress),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
            const  SizedBox(height: 16,),
               Row(
                                      // mainAxisAlignment:
                                          // MainAxisAlignment.spaceEvenly,
                                      children: [
                                     const    Text("Price :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                        Text("${controller.products[index].price
                                            .toString()} Ks",style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold))
                                      ]),
            const  SizedBox(height: 16,),
        
              // Text(index.toString()),
              Text(controller.products[index].description.toString(),style: const TextStyle(letterSpacing: 0.7,fontWeight: FontWeight.bold,fontSize: 17),),
              // Text(controller.products[index].rating.rate.toString()),
              
              // Text(controller.products[index].rating.count.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
