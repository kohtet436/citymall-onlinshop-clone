import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'inside_myaccount.dart';

class MyServiceCard extends StatelessWidget {
  const MyServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Card(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          width: MediaQuery.of(context).size.width,height:190,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                            const Text("My Services"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                            InsideMyAccount(icon: Icons.circle, name: "Language"),
                            InsideMyAccount(icon: Icons.location_on_outlined, name: "Change Township"),
                            InsideMyAccount(icon: Icons.lock_outline, name: "Password"),

                            ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children:const [
                            InsideMyAccount(icon: Icons.notifications_outlined, name: "Messages"),
                            InsideMyAccount(icon: Icons.privacy_tip_outlined, name: "Privacy & Terms"),
                            InsideMyAccount(icon: Icons.help_center_outlined, name: "Help Center"),

                            ],)
                          ],),
                        ),
                      )
;
  }
}