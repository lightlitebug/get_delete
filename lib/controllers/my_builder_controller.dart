import 'package:get/get.dart';

class MyBuilderController extends GetxController {
  int myCount = -10;

  void increment() {
    myCount++;
    update();
  }

  void decrement() {
    myCount--;
    update();
  }

  @override
  void onInit() {
    print('onInit Called');
    super.onInit();
  }

  @override
  void onReady() {
    print('onReady called');
    super.onReady();
  }

  @override
  void onClose() {
    print('onClose called');
    super.onClose();
  }
}
