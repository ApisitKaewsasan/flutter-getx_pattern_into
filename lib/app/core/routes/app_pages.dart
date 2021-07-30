import 'package:get/get.dart';
import 'package:getx_test/app/core/middleware/FirstMiddleware.dart';
import 'package:getx_test/app/core/middleware/SecondMiddleware.dart';
import 'package:getx_test/app/pages/detail/binding/detail_binding.dart';
import 'package:getx_test/app/pages/detail/view/detail.dart';
import 'package:getx_test/app/pages/home/binding/home_binding.dart';
import 'package:getx_test/app/pages/home/view/home.dart';
import 'package:getx_test/app/pages/login/binding/login_binding.dart';
import 'package:getx_test/app/pages/login/view/Login.dart';
import 'package:getx_test/app/pages/profile/binding/profile_binding.dart';
import 'package:getx_test/app/pages/profile/view/profile.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => HomeScreen(),
        binding: HomeBinding(),
        middlewares: [FirstMiddleware(), SecondMiddleware()]),
    GetPage(
        name: _Paths.DETAIL,
        page: () => DetailScreen(),
        binding: DetailBinding()),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding()
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileScreen(),
      binding: ProfileBinding()
    ),
  ];
}
