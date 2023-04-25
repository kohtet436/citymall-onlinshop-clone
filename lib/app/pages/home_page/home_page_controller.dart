import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:citymallonline/models/product_model.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{

RxMap<int, ProductModel> cartList = <int, ProductModel>{}.obs;
  RxBool _dataLoading = true.obs;
  get dataLoading => _dataLoading.value;
  RxList _products = [].obs;
  List get products => _products.value;
  set products(val) => _products.value = val;
  static const String productUrl = "https://fakestoreapi.com/products";

  void addToCart(int id) {
    // cartList.add(ProductModel(id: id))
    // ;
    cartList.putIfAbsent(id, () => ProductModel());
  }
    Iterable<bool> detail(var index) {
    // products.firstWhere((element) => element.==index);
    return products.map((e) => e.val == index);
  }
  
  getProductApi() async {
    var response = await http.get(Uri.parse(productUrl));
    var jsondecode = jsonDecode(response.body);
    _dataLoading.value = false;
    print(
        "${jsondecode.map((e) => ProductModel.fromJson(e)).toList().runtimeType}");
    print("call home");
    return jsondecode.map((e) => ProductModel.fromJson(e)).toList();
// products=jsondecode;
// print("data is ${jsondecode.runtimeType}");

// return ProductModel.fromJson(jsondecode);
  }

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();
 
 @override
  void onInit() async {
    products = await getProductApi();
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    messaging.getToken().then((value) {
      print(value);
    });

    super.onInit();
// getData();
  }






}