import 'package:get/get.dart';
import 'package:getx_test/app/core/middleware/FirstMiddleware.dart';
import 'package:getx_test/app/core/middleware/SecondMiddleware.dart';
import 'package:getx_test/app/pages/binding/detail_binding.dart';
import 'package:getx_test/app/pages/binding/home_binding.dart';
import 'package:getx_test/app/pages/binding/login_binding.dart';
import 'package:getx_test/app/pages/binding/profile_binding.dart';
import 'package:getx_test/app/pages/view/detail/detail_view.dart';
import 'package:getx_test/app/pages/view/home/home_view.dart';
import 'package:getx_test/app/pages/view/login/Login_view.dart';
import 'package:getx_test/app/pages/view/profile/profile_view.dart';

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
