import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class FirtsScreenView extends StatelessWidget {
  const FirtsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FirtsScreenController>(
      init: FirtsScreenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  bottom: 30.0,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 171, 216, 66)
                          .withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100,
                        sigmaY: 100,
                      ),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10.0,
                  right: -30.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: 200,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 102, 207, 53)
                          .withOpacity(0.5),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 100,
                        sigmaY: 100,
                      ),
                      child: Container(
                        height: 100,
                        width: 100,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Container(
                                width: 116.0,
                                height: 116.0,
                                margin: const EdgeInsets.only(
                                  top: 186.0,
                                  left: 132.0,
                                  right: 127.0,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[200],
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.person_add,
                                  size: 24.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 8,
                              child: Form(
                                key: controller.loginFormKey,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15.0),
                                      width: 310,
                                      height: 45.0,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                      ),
                                      child: TextFormField(
                                        keyboardType: TextInputType.name,
                                        textInputAction: TextInputAction.next,
                                        cursorColor: const Color(0xFF6F35A5),
                                        onChanged: (value) {
                                          controller.username = value;
                                        },
                                        validator: (value) =>
                                            controller.validatorUsername(value),
                                        decoration: const InputDecoration(
                                          hintText: "username",
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15.0),
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15.0),
                                        width: 310,
                                        height: 45.0,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(12.0),
                                          ),
                                        ),
                                        child: TextFormField(
                                          keyboardType: TextInputType.name,
                                          textInputAction: TextInputAction.next,
                                          cursorColor: const Color(0xFF6F35A5),
                                          onChanged: (value) {
                                            controller.palidrom = value;
                                          },
                                          validator: (value) => controller
                                              .validatorPalindrom(value),
                                          decoration: const InputDecoration(
                                            hintText: "Palindrom",
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 45.0,
                        ),
                        SizedBox(
                          width: 310,
                          height: 41.0,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              // foregroundColor: Colors.blueGrey,
                              backgroundColor:
                                  const Color.fromARGB(43, 99, 123, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            onPressed: () {
                              if (controller.isPalindrom(controller.palidrom) &&
                                  controller.palidrom.isNotEmpty) {
                                Get.dialog(
                                  AlertDialog(
                                    title: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: const Center(
                                            child: Text('Message'))),
                                    content: const Text(
                                      'IsPalindrom',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: const Center(
                                            child: Text(
                                          'OK',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                );
                              } else if (controller.palidrom == "") {
                                Get.dialog(
                                  AlertDialog(
                                    title: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: const Center(
                                            child: Text('Message'))),
                                    content: const Text(
                                      'IsNotPalindrom',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: const Center(
                                            child: Text(
                                          'OK',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                Get.dialog(
                                  AlertDialog(
                                    title: Container(
                                        width: 50.0,
                                        height: 50.0,
                                        padding: const EdgeInsets.all(10.0),
                                        decoration: const BoxDecoration(
                                          color: Colors.orange,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.0)),
                                        ),
                                        child: const Center(
                                            child: Text('Message'))),
                                    content: const Text(
                                      'IsNotPalindrom',
                                      style: TextStyle(
                                        fontSize: 20.0,
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: const Center(
                                            child: Text(
                                          'OK',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              "CHECK",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        SizedBox(
                          width: 310,
                          height: 41.0,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              // foregroundColor: Colors.blueGrey,
                              backgroundColor:
                                  const Color.fromARGB(43, 99, 123, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(12), // <-- Radius
                              ),
                            ),
                            onPressed: () {
                              Get.to(const SecondScreenView());
                            },
                            child: const Text(
                              "NEXT",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
