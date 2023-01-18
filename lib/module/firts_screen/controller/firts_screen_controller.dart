// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import '../view/firts_screen_view.dart';

class FirtsScreenController extends GetxController {
  FirtsScreenView? view;
  String username = '';
  String palidrom = '';
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  isPalindrom(String text) {
    return text == text.split('').reversed.join('');
  }
}
