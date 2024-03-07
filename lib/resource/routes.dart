import 'package:get/get.dart';
import 'package:yellowsquash_expert/screens/login_screen.dart';
import '../screens/queries_screen/queries_screen.dart';
import '../splash_screen.dart';

class MyRouter {
  static var route = [
    GetPage(name: '/', page: () => const LoginScreen()),
    GetPage(name: RaiseQueryList.raiseQueryList, page: () => const RaiseQueryList()),
  ];
}
