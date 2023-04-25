import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'inside_myaccount.dart';

class MyAccountCard extends StatelessWidget {
  const MyAccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
                        child: Container(
                          padding:const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                              // color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,

                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("My Account"),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  InsideMyAccount(
                                      icon: Icons.note_add, name: "Orders"),
                                  InsideMyAccount(
                                      icon: Icons.gif_box,
                                      name: "City Rewords"),
                                  InsideMyAccount(
                                      icon: Icons.book, name: "Address Book")
                                ],
                              )
                            ],
                          ),
                        ),
                      );
  }
}