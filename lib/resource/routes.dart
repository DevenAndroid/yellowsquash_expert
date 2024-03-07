import 'package:get/get.dart';


import '../screens/blogViewScreen.dart';
import '../screens/filterScreen.dart';



class MyRouter{
  static var route = [
  GetPage(name: '/', page: () => const FilterScreen()),
  ];
}