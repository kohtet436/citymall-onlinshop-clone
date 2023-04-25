import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/routes.dart';
import '../themes/themes.dart';

class LocationAndDropDwon extends GetView<FormController> {
  const LocationAndDropDwon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 450,
                margin: const EdgeInsets.symmetric(horizontal: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "Please switch on device location so we can better server you with our products and services".tr,
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500),
                    ),
                    DottedBorder(borderType: BorderType.RRect,
                      radius: Radius.circular(10),
                      dashPattern: const [5, 5],
                      borderPadding: const EdgeInsets.all(1),
                      padding: const EdgeInsets.all(10),
                      
                      color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                           Text("Do you want to switch on location?".tr),
                          Obx(()=>
                             Switch(value: controller.open, onChanged: (e) {
                              controller.open=e;
                              controller.getCurrentPosition();
                            }),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 2,
                          color: Colors.grey,
                        )),
                        const Text(
                          "OR",
                          style: TextStyle(color: Colors.grey,
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                            child: Container(
                          height: 2,
                          color: Colors.grey,
                        ))
                      ],
                    ),
                     Text("Select you desired township instead",style: Themes.appBarText.copyWith(color: Colors.black),),
                    const Text("CITY*",style: TextStyle(fontWeight: FontWeight.bold),),

    Obx(()=>
       Row(children: [
    // const Text("latitute  :"), Text(controller.currentPosition.latitude.toString()),
  // const Text("longitude  :"), Text(controller.currentPosition.longitude.toString()),
  const Text("address:"), Text(controller.currentAddress.toString()),


    
    
      ],),
    ),

                    // DropdownButtonFormField<dynamic>(
                    //   isDense: true,
                    //   decoration: 
                    //  const InputDecoration(
                    //     isDense: true,
                        
                    //     border: OutlineInputBorder()),
                    //   elevation: 0,
                    //   iconSize: 20,
                      
                    //   isExpanded: true,
                    //   value: "Magway".isNotEmpty ? "Magway" : null,
                     
                    //   icon: const Icon(
                    //     Icons.keyboard_arrow_down,
                    //     color: Colors.grey,
                    //   ),
                    //   items: const[
                    //     DropdownMenuItem(
                    //       value: "Magway",
                    //       child: Text("Magway"),
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Yangon"),
                    //       value: "Yangon",
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Bago"),
                    //       value: "Bago",
                    //     )
                    //   ],
                  
                     
                    //   onChanged: (var newValue) {
                    //     // controller.dropvalue = newValue;
                    //     print('select=>$newValue');
                    //   },
                    // ),
                    // const Text("TOWNSHIP*",style: TextStyle(fontWeight: FontWeight.bold),),
                    // DropdownButtonFormField<dynamic>(
                    //   isDense: true,
                    //   decoration: 
                    //   const InputDecoration(
                    //     isDense: true,
                        
                    //     border: OutlineInputBorder()),
                    //   elevation: 0,
                    //   iconSize: 20,
                      
                    //   isExpanded: true,
                    //   value: "Magway".isNotEmpty ? "Magway" : null,
                     
                    //   icon: const Icon(
                    //     Icons.keyboard_arrow_down,
                    //     color: Colors.grey,
                    //   ),
                    //   items: const[
                    //     DropdownMenuItem(
                    //       value: "Magway",
                    //       child: Text("Magway"),
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Yangon"),
                    //       value: "Yangon",
                    //     ),
                    //     DropdownMenuItem(
                    //       child: Text("Bago"),
                    //       value: "Bago",
                    //     )
                    //   ],
                  
                     
                    //   onChanged: (var newValue) {
                    //     // controller.dropvalue = newValue;
                    //     print('select city=>$newValue');
                    //   },
                    // ),
                    SizedBox(
                      width: 380,
                      height: 45,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: const MaterialStatePropertyAll(
                                  Color.fromRGBO(255, 152, 0, 1)),
                              shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(26)))),
                          onPressed: () {
                            print("onpressed");
                            Get.toNamed(Routes.allPage);},
                          child:const Text("Next",style: Themes.appBarText,)),
                    )
                  ],
                ),
              );
  }
}