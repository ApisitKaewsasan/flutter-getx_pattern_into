import 'package:get/get.dart';
import 'package:getx_test/app/pages/controller/home_controller.dart';
import 'package:getx_test/app/services/http_service.dart';

class HomeRepository {
  late HttpService apiProvider = HttpService();
  int value = 2;

  String fetchTextFromApi() {
    return "this text is loaded from backend";
  }

  void fetchNews() {
    Get.defaultDialog(
        title: "dsvcndsjvn dsjv", barrierDismissible: false, radius: 5);
    apiProvider.getNews().then((value) {
      print(value);
      Get.close(0);
    });
  }
}
