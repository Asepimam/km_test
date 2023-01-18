// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import '../view/second_screen_view.dart';

class SecondScreenController extends GetxController {
  SecondScreenView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // updatSeletedUser()
    print(userList);
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  List userList = [];
  addUserList(item) {
    userList.add(item);
    update();
  }
}
