import 'package:flutter/material.dart';
import '../controller/second_screen_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class SecondScreenView extends StatelessWidget {
  final String? title;
  final String name;
  const SecondScreenView({Key? key, required this.name, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SecondScreenController>(
      init: SecondScreenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: const Text("Second Screen"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children:  [
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Text(
                    name,style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
