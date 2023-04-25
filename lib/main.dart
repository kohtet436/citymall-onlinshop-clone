import 'package:citymallonline/app/bindings/all_binding.dart';
import 'package:citymallonline/app/bindings/splash_binding.dart';
import 'package:citymallonline/app/translation/app_translation.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/routes.dart';
import 'app/services/notification_service.dart';
import 'firebase_options.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

FirebaseMessaging messaging = FirebaseMessaging.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    print("message${message.notification?.title}");
    NotificationService().showNotification(
      title: message.notification?.title,

      // notification.hashCode,
      // message.notification?.title,
      // message.notification?.body,
      // NotificationDetails(
      //   android: AndroidNotificationDetails(
      //     "channel.id",
      //     "channel.name",
      //     // channelDescripion : "channel.description",
      //     // color: Colors.blue,
      //     // playSound: true,
      //     icon: 'ic_lancher',
      //   ),
    );
    // print('Got a message whilst in the foreground!');
    // print('Message data: ${message.notification?.title}');

    if (message.notification != null) {
      print('Message also contained a notification: ${message.notification}');
    }
  });
  NotificationService().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale:Locale('en_En'),
      fallbackLocale: Locale('en_En'),
      translations: AppTranslation(),
      debugShowCheckedModeBanner: false,
      initialBinding: SplashBinding(),
      // initialBinding: AllBinding(),
      // initialRoute: Routes.homePage,
      initialRoute: Routes.initPage,
      // initialRoute: Routes.loginPage,
      getPages: Routes.pages,
      title: 'City Mall',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
