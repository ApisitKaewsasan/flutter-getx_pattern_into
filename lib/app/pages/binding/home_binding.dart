import 'package:get/get.dart';
import 'package:getx_test/app/core/repository/home_repository.dart';
import 'package:getx_test/app/pages/controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeRepository());
    Get.put(HomeController());
  }
}
