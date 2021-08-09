
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_test/app/core/db/storage_key.dart';

class HomeController extends FullLifeCycleController with FullLifeCycle{


  var count = 0.obs;
  RxString name = "".obs;
   var storage = GetStorage();

  RxBool isLoading = false.obs;
  increment()=>count++;
  showLoading()=>isLoading.toggle();
  hideLoading()=>isLoading.toggle();
  writeStore(String text){
    storage.write(testStorage, text).then((value) => name.value = text);
    storage.save();
  }

  @override
  void onInit() {
    name.value = storage.read(testStorage);
    super.onInit();
    print("onInit");
  }

  @override
  void onDetached() {
    print("onDetached");
    // TODO: implement onDetached
  }

  @override
  void onInactive() {
    print("onInactive");
    // TODO: implement onInactive
  }

  @override
  void onPaused() {
    print("onPaused");
    // TODO: implement onPaused
  }

  @override
  void onResumed() {
    print("onResumed");
    // TODO: implement onResumed
  }

}