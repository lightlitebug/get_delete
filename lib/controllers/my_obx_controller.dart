import 'package:get/get.dart';

class MyObxController extends GetxController {
  RxInt myCount = (-10).obs;

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
