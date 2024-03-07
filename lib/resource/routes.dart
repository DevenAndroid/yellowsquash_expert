import 'package:get/get.dart';
import '../screens/queries_screen/queries_screen.dart';
import '../splash_screen.dart';

class MyRouter {
  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: RaiseQueryList.raiseQueryList, page: () => const RaiseQueryList()),
  ];
}
