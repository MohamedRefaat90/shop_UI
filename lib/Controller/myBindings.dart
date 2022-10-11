import 'package:get/get.dart';
import 'package:shop/Controller/myController.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MyController());
  }
}
