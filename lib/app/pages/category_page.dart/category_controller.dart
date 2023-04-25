import 'dart:convert';

import 'package:citymallonline/app/pages/category_page.dart/category_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:video_viewer/video_viewer.dart';

class CategoryController extends GetxController {
  VideoViewerController  videoPlayerController=VideoViewerController();
  String url =
      "https://www.scorebat.com/video-api/v3/feed/?token=NzI2MTNfMTY4MDU0MzM0MV8xOTFjNWI1NTQwYjgyYTg4YjU0MDUxNDQ5M2FmZWIzNTViM2FhYWVi";
  RxBool _isLoading = true.obs;
  final Rx<CategoryModel> _model=CategoryModel().obs;
  get model=>_model.value;
  bool get isLoading => _isLoading.value;
  set isLoading(val) => _isLoading.value = val;
  Future<CategoryModel?> getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {

      var result = jsonDecode(response.body);
      _isLoading.value = false;

      _model.value= CategoryModel.fromJson(result);
      print("call category");
      // print("data=> ${model.response[0].videos[0].embed}");
      return _model.value;
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
