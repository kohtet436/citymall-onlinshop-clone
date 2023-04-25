import 'package:cached_network_image/cached_network_image.dart';
import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:citymallonline/app/routes/routes.dart';
import 'package:citymallonline/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../../widgets/cart_widget.dart';
import 'home_page_controller.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          foregroundColor: Colors.grey,
          title: SizedBox(
            height: 40,
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: "Search products".tr,
                  isDense: true,
                  border: OutlineInputBorder()),
            ),
          ),
          actions: [CartWidget()],
        ),
        body: Obx(
          () => controller.dataLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 6),
                  itemCount: controller.products.length,
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(
                            Routes.productDetail,
                            arguments: index,
                          );
                          // Get.toNamed(Routes.testPage,id: Utils.homePageId);
                        },
                        child: Card(
                          elevation: 3,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 300,
                            width: 100,
                            // color: Colors.red,
                            child: Column(
                              children: [
                                Expanded(
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 70,
                                    width: 80,
                                    imageUrl: controller.products[index].image
                                        .toString(),
                                    progressIndicatorBuilder:
                                        (context, url, downloadProgress) =>
                                            Center(
                                      child: CircularProgressIndicator(
                                          value: downloadProgress.progress),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                Text(
                                  controller.products[index].title.toString(),
                                  style: const TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Obx(
                                  () => Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        const Expanded(child: Text("Price:")),
                                        Text(
                                            "${controller.products[index].price.toString()}Ks "),
                                        Expanded(
                                          child: IconButton(
                                              // key: controller.widgetkey,
                                              onPressed: () async {
                                                controller.addToCart(controller
                                                    .products[index].id);
                                                //  await controller.runAddToCartAnimation(controller.widgetkey);
                                                // await controller.cartKey.currentState!.runCartAnimation(
                                                //   controller.cartList.length.toString()
                                                //   )

                                                // .runCartAnimation((++_cartQuantityItems).toString());
                                                //                                                   controller.cartList.forEach((e){
                                                // e.id==controller.products[index].id;
                                                //                                                   }
                                                //                                                   );
                                                // print("e=> ${controller.cartList.contains(controller.products[index].id)}");
                                                // controller.cartList.map((e){
                                                // //  if( e.id==controller.products[index].id){
                                                // print("true=>${ e}");
                                                // //  }
                                                // });
                                                // print(
                                                //     "item=>${controller.cartList.map((element) => element.id)}");
                                                //       print(
                                                //     "per lar=>${controller.cartList.map((element) => element.id==controller.products[index].id)}");
                                              },
                                              icon: controller.cartList
                                                      .containsKey(controller
                                                          .products[index].id)
                                                  ? Icon(
                                                      Icons.favorite,
                                                      color: Colors.red,
                                                    )
                                                  : Icon(Icons.favorite_outline)

                                              //  controller.cartList.map((e){e.id==controller.products[index].id}

                                              //  contains( controller.products[index].id)?Icons.favorite:  Icons.favorite_outline,
                                              // )
                                              ),
                                        )
                                      ]),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
        ));
  }
}
