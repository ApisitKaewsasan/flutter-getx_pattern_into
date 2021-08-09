
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_test/app/core/repository/home_repository.dart';
import 'package:getx_test/app/core/routes/app_pages.dart';
import 'package:getx_test/app/pages/controller/home_controller.dart';
import 'package:getx_test/translations/message_key.dart';



class HomeScreen extends GetView<HomeController>{
  final apiService = Get.find<HomeRepository>();// ดึงค่าจาก ไฟล์อื่นได้ หมายถึงหน้า อื่นได้
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen ${FlavorConfig.instance!.name}"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(
               ()=> Text("This is home screen ${controller.count}",style: TextStyle(fontSize: 24),)
           ),
            TextButton(onPressed: (){
              Get.changeTheme(ThemeData.light());
              Get.snackbar("this is snackbar","message test",snackPosition:SnackPosition.BOTTOM);
              // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("DefaultSnackbar")),
            TextButton(onPressed: (){
            Get.defaultDialog(title: "this is dilog");
              // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("DefaultDilog")),
            TextButton(onPressed: (){
              controller.increment();
              apiService.fetchNews();
             // Get.toNamed("/detail");
              // Get.offNamed("/detail"); open and clear screen for Name
              // Get.off(DetailScreen()); open and clear screen
            }, child: Text("Count Number")),
            TextButton(onPressed: (){

              print(apiService.fetchTextFromApi());
            Get.toNamed(Routes.DETAIL);
             // Get.offNamed("/detail"); open and clear screen for Name
             // Get.off(DetailScreen()); open and clear screen
            }, child: Text("Go to detail")),
            Divider(),
            Obx(
                ()=>Text("GetStorage => ${controller.name}",textAlign: TextAlign.center)
            ),
            Divider(),
            Text("translation",style: TextStyle(fontSize: 24),),
            SizedBox(height: 20),
            Text("translation => tr => ${MessageKey.HELLO}"),
            Divider(),
            Text("translation => trParams => ${"logged_in".trParams({
              'name': 'Jhon',
              'email': 'jhon@example.com'
            })}",textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
