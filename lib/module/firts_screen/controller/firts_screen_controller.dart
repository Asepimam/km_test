// ignore_for_file: unnecessary_overrides

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/firts_screen_view.dart';

class FirtsScreenController extends GetxController {
  FirtsScreenView? view;
  String username = '';
  String palidrom = '';
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
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

  validatorPalindrom(value) {
    if (value.isEmpty) {
      return "Tidak Boleh Kosong";
    }
  }

  validatorUsername(value) {
    if (value.isEmpty) {
      return "Tidak Boleh kosong";
    }
  }

  isPalindrom(String text) {
    return text == text.split('').reversed.join('');
  }
}
