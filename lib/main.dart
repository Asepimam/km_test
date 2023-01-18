import 'package:fhe_template/Routes/route.dart';
import 'package:fhe_template/core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await initialize();

  Widget mainView = Container();

  runApp(
    GetMaterialApp(
      getPages: getPages,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const FirtsScreenView(),
    ),
  );
}
