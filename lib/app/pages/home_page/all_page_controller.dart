import 'dart:convert';

import 'package:citymallonline/app/repository/product_repository.dart';
import 'package:citymallonline/app/services/notification_service.dart';
import 'package:citymallonline/models/product_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AllPageController extends GetxController {
  
  var index = 0.obs;
  int get indexs =>index.value;
  ProductRespository productRespository = ProductRespository();
  changePage(int currentIndex) {
    index.value = currentIndex;
    update();
  }




}
