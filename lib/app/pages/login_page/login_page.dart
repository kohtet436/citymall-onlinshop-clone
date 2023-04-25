import 'package:citymallonline/app/pages/form_page/form_controller.dart';
import 'package:citymallonline/app/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
// Get.lazyPut(() => FormController());

    return Scaffold(appBar: AppBar(
elevation: 0,
    ),
    body: 
    Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: ListView(
    children: [
          Image.asset("images/splash/citymall.png"),
          TextFormField(
            decoration:const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(
              ),
              hintText: "Enter username"
            ),
          ),
          const SizedBox(height: 30,),
          TextFormField(
            decoration:const InputDecoration(
              isDense: true,
              border: OutlineInputBorder(),
              hintText: "Enter password"
            ),
            
    
          ),
     const   SizedBox(height: 40,),
           ElevatedButton(onPressed: (){}, child: Text("Login".tr))
    
    ],
    
      ),
    )



    // ListView(children: [
    //   ElevatedButton(onPressed: ()async{
    //     NotificationService().showNotification(title: "Title",body: "Body");
    //   }, child: Text("Notification"))
    //     // Image.asset("images/splash/citymall.png"),
    //   // Container(
    //   // //   decoration:
    //   // // ,
    //   //   child: Row(children: [
    //   //   Icon(Icons.person_pin),
    //   //   Text("Please login or register an account to access your profile")
    //   // ],),)
    // ],)
    );
  }
}