// ignore_for_file: unnecessary_overrides

import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../view/thrid_screen_view.dart';

class ThridScreenController extends GetxController {
  ThridScreenView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    getUserList();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List userList = [];
  void getUserList() async {
    userList.clear();
    update();
    Future.delayed(const Duration(seconds: 2));

    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    userList = obj["data"];
    update();
  }
}
