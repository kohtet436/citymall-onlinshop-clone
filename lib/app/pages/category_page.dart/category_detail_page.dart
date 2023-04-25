import 'package:citymallonline/app/pages/category_page.dart/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';

class CategoryDetailPage extends GetView<CategoryController> {
 final int? index;
  CategoryDetailPage({super.key, this.index});

int indexs=Get.arguments;
  @override
  Widget build(BuildContext context) {
print("indexs$indexs");

    return Scaffold(
      appBar: AppBar(title: const Text("Detail"),),
      body:Text(controller.model.response[indexs].title.toString())
      // WebView() 
      // Html(data:controller.model.response[indexs].videos[0].embed.toString()),

    );
  }
}