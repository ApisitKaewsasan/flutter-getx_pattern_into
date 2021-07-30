import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/app/pages/detail/controller/detail_controller.dart';
import 'package:getx_test/app/pages/home/controller/home_controller.dart';

class DetailScreen extends GetView<DetailController> {
  final homeController = HomeController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "This is home screen ${homeController.count}",
                  style: TextStyle(fontSize: 24),
                )),
            TextButton(
                onPressed: () {
                  homeController.increment();
                  // Get.toNamed("/detail");
                  // Get.offNamed("/detail"); open and clear screen for Name
                  // Get.off(DetailScreen()); open and clear screen
                },
                child: Text("Count Number")),
            TextButton(
                onPressed: () {
                  homeController.writeStore("Apisit ${DateTime.now()}");
                },
                child: Text("Save Storage")),
            TextButton(
                onPressed: () {
                  Get.back();
                  // Get.offNamed("/detail"); open and clear screen for Name
                  // Get.off(DetailScreen()); open and clear screen
                },
                child: Text("Go Back"))
          ],
        ),
      ),
    );
  }
}
