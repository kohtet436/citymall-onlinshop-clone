import 'package:citymallonline/app/bindings/category_binding.dart';
import 'package:citymallonline/app/bindings/form_binding.dart';
import 'package:citymallonline/app/bindings/all_binding.dart';
import 'package:citymallonline/app/bindings/home_page_binding.dart';
import 'package:citymallonline/app/bindings/splash_binding.dart';
import 'package:citymallonline/app/pages/cart_page/cart_page.dart';
import 'package:citymallonline/app/pages/category_page.dart/category_detail_page.dart';
import 'package:citymallonline/app/pages/form_page/form_page.dart';
import 'package:citymallonline/app/pages/login_page/login_page.dart';
import 'package:citymallonline/app/pages/product_detail_page/product_detail_page.dart';
import 'package:citymallonline/app/pages/splash_page/init_page.dart';
import 'package:citymallonline/app/pages/splash_page/splash_page.dart';
import 'package:citymallonline/app/pages/test/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/account_page/account_page.dart';
import '../pages/category_page.dart/category_page.dart';
import '../pages/deals_page/deals_page.dart';
import '../pages/home_page/all_page.dart';
import '../pages/home_page/home_page.dart';
import '../pages/store_page/store_page.dart';

class Routes {

  static const String initPage='/initPage';
  static const String splashPage = '/splashPage';
  static const String formPage = '/formPage';
  static const String homePage='/homePage';
  static const String dealPage='/dealPage';
  static const String storePage='/storePage';
  static const String categoryPage='/categoryPage';
  static const String accountPage='/accountPage';
  static const String allPage='/allPage';
  static const String productDetail='/productDetail';
  static const String cartPage='/cartPage';
  static const String loginPage='/loginPage';
  static const String categoryDetailPage='/categoryDetailPage';

// static const String testPage='/testPage';


  static List<GetPage> pages = [
//  GetPage(name: Routes.testPage, page: () => Test(), bindings: [
//       AllBinding(),
//     ]),
 GetPage(name: Routes.loginPage, page: () => const LoginPage(), bindings: [
      // AllBinding(),
      FormBinding()
    ]),
    GetPage(name: Routes.categoryDetailPage, page: () => CategoryDetailPage(), bindings: [
      // AllBinding(),
    ]),

     GetPage(name: Routes.productDetail, page: () =>   ProductDetailPage(), bindings: [
      AllBinding(),
    ]),
     GetPage(name: Routes.cartPage, page: () =>  CartPage(), bindings: [
      AllBinding(),
    ]),
    GetPage(name: Routes.allPage, page: ()=>AllPage(),bindings: [AllBinding(),
    HomePageBinding(),

    CategoryBinding(),
    ]),
    GetPage(name: Routes.initPage, page: ()=>const InitPage(),bindings: [SplashBinding(),FormBinding(),]),
      GetPage(name: Routes.categoryPage, page: () => const CategoryPage(), bindings: [
      AllBinding(),
      CategoryBinding()
    ]), 
     GetPage(name: Routes.accountPage, page: () => const AccountPage(), bindings: [
      AllBinding()
    ]),
  GetPage(name: Routes.dealPage, page: () => const DealsPage(), bindings: [
      AllBinding()
    ]),  GetPage(name: Routes.storePage, page: () => const StorePage(), bindings: [
AllBinding()
    ]),


     GetPage(name: Routes.homePage, page: () =>  HomePage(), bindings: [
      AllBinding(),
      HomePageBinding()
      
    ]),
    GetPage(name: Routes.splashPage, page: () => const SplashPage(), bindings: [
      SplashBinding(),
    ]),
     GetPage(name: Routes.formPage, page: () => const FormPage(), bindings: [
FormBinding()
    ])

  ];
}
