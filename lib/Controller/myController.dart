import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shop/Model/productColor.dart';

class MyController extends GetxController {
  // ============== HomeScreen ==============
  // Change index of Category Taps
  RxInt selectedindex = 0.obs;
  changeIndex(int newIndex) {
    selectedindex.value = newIndex;
  }

  // ============== ProductInfo Screen ==============
  changeSelectedColorDot(int index) {
    colorsList.forEach((element) {
      element.isSelected = false;
    });
    colorsList[index].isSelected = true;
    update();
  }

  // ========= Cart Counter Buttons ===========

  int numOfItems = 1;
  increaseCartCounter() {
    numOfItems++;
    update();
  }

  decreaseCartCounter() {
    if (numOfItems > 1) numOfItems--;
    update();
  }

  bool isFav = false;

  favourit() {
    isFav = !isFav;
    update();
  }
}
