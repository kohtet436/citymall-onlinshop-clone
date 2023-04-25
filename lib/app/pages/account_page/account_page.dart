import 'package:citymallonline/app/routes/routes.dart';
import 'package:citymallonline/app/widgets/business_with_cmo.dart';
import 'package:citymallonline/app/widgets/contact_us_card.dart';
import 'package:citymallonline/app/widgets/inside_myaccount.dart';
import 'package:citymallonline/app/widgets/myaccount_card.dart';
import 'package:citymallonline/app/widgets/myservice_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 241, 233, 233),
        body: ListView(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  color: Colors.blue,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text("Welcome to City Mail Online"),
                        ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
Get.toNamed(Routes.loginPage);

                            },
                            child: const Text(
                              "Login or Register",
                              style: TextStyle(color: Colors.black),
                            ))
                      ]),
                ),
                Positioned(
                  right: 5,
                  left: 5,
                  top: 105,
                  child:SizedBox(
                    // color: Colors.amber,
                    width:MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyAccountCard(),
                        const MyServiceCard(),
                        BusinessWithCMO(
                          icon: Icons.handshake_outlined,
                          name: "Business with CMO",
                        ),
                        const Text("Contact Us"),
                        Row(
                          children: [
                            ContactUsCard(
                              icon: Icons.phone_outlined,
                              name: "09793399530",
                            ),
                            ContactUsCard(
                              icon: Icons.phone_in_talk_sharp,
                              name: "09793399530",
                            ),
                            ContactUsCard(
                              icon: Icons.message_outlined,
                              name: "@citymallonlineemmcmhl",
                            ),
                            ContactUsCard(
                              icon: Icons.email_outlined,
                              name: "customercare@citymall.com",
                            )
                          ],
                        ),
                        BusinessWithCMO(
                          name: "Please login or register to start shopping",
                        ),
                        // Container(height: 30,color: Colors.red,width: MediaQuery.of(context).size.width,),
Align(
  alignment: Alignment.centerRight,
  child: Text("Version 1.0.7")),
// Text("Version 1.0.7")

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
