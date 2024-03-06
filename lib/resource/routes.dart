import 'package:get/get.dart';
import 'package:yellowsquash_expert/splashScreen.dart';


class MyRouter{
  static var route = [
  GetPage(name: '/', page: () => const SplashScreen()),
  ];
}