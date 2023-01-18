import 'package:fhe_template/core.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

const String firstScreen = '/firstScreen';
const String secondScreen = '/secondScreen';
const String thirdScreen = '/thirdScreen';

List<GetPage> getPages = [
  GetPage(
    name: firstScreen,
    page: () => const FirtsScreenView(),
    transition: Transition.zoom,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: secondScreen,
    page: () => const SecondScreenView(),
    transition: Transition.leftToRightWithFade,
    transitionDuration: const Duration(milliseconds: 500),
  ),
  GetPage(
    name: thirdScreen,
    page: () => const ThridScreenView(),
    transition: Transition.zoom,
    transitionDuration: const Duration(milliseconds: 500),
  ),
];
