import 'package:flutter/material.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ThridScreenView extends StatelessWidget {  
  const ThridScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThridScreenController>(
      init: ThridScreenController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 1.0,
            title: const Text("Thrid Screen"),
          ),
          body: SingleChildScrollView(
            child: RefreshIndicator(
              onRefresh: () async {
                controller.getUserList();
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount: controller.userList.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = controller.userList[index];
                        return InkWell(
                          onTap: () {
                            Get.toNamed(
                              '/second',
                              arguments: item,
                            );
                          },
                          child: Card(
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.grey[200],
                                backgroundImage: NetworkImage(
                                  item["avatar"],
                                ),
                              ),
                              title: Text(
                                  item["first_name"] + " " + item["last_name"]),
                              subtitle: Text(item["email"]),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
