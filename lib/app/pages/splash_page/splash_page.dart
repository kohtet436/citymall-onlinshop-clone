import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return 
   Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    
        children: [
        Image.asset("images/splash/citymall.png"),
        const CircularProgressIndicator(),
        const Text("City mall"),
    
      ],),
    
    );
  }
}