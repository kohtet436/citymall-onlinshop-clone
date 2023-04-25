import 'package:citymallonline/app/pages/account_page/account_page.dart';
import 'package:citymallonline/app/pages/category_page.dart/category_page.dart';
import 'package:citymallonline/app/pages/deals_page/deals_page.dart';
import 'package:citymallonline/app/pages/home_page/all_page_controller.dart';
import 'package:citymallonline/app/pages/product_detail_page/product_detail_page.dart';
import 'package:citymallonline/app/pages/store_page/store_page.dart';
import 'package:citymallonline/app/routes/routes.dart';
import 'package:citymallonline/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class AllPage extends GetView<AllPageController> {
  AllPage({super.key});
  List<Widget> all = const [
    HomePage(),
    CategoryPage(),
    DealsPage(),
    StorePage(),
    AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: 
        Obx(()=>
           IndexedStack(
            index: controller.index.value,
            children:  [
              // HomePage(),
              Navigator(
                initialRoute: Routes.homePage,
                key: Get.nestedKey(Utils.homePageId),
                onGenerateRoute: (settings) {
                  if(settings.name==Routes.productDetail){
                    return MaterialPageRoute(builder: (context){
                      return ProductDetailPage();
                    });
                  }
                  else if (settings.name==Routes.homePage){
                    return MaterialPageRoute(builder: (context){
      
      return HomePage();
                    });
                  }
                },
      
              ),
              
            CategoryPage(),
              DealsPage(),
              StorePage(),
              AccountPage(),
              
            ],
          ),
        ),
      
      
      
      
        //  Obx(() => 
      //    Navigator(
      //  initialRoute:Routes.homePage ,
      //  pages: [

      //  ],   

          
        //  )
        //  all[controller.index]
         
         
        //  ),
      
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
              // selectedIconTheme: IconThemeData(color: Colors.blue),
              selectedItemColor: Colors.blue,
              currentIndex: controller.index.value,
              type: BottomNavigationBarType.fixed,
              onTap: controller.changePage,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.category,
                    ),
                    label: "Category"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.support_agent,
                    ),
                    label: "Deals"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.store,
                    ),
                    label: "Stores"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: "Account")
              ]),
        ),
      ),
    );
  }
}
