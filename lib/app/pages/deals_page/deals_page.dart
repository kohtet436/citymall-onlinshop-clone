import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DealsPage extends StatelessWidget {
  const DealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        title: SizedBox(
          height: 40,
          child: TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search,size: 30,),
                hintText: "Search products",
                isDense: true,
                border: OutlineInputBorder()),
          ),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart_outlined,size: 30,
            color: Colors.blue,
          )
        ],
      ),
      body: Center(child: Text("Deals page"),));
  }
}