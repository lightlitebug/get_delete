import 'package:get/get.dart';

class CounterObxController extends GetxController {
  RxInt count = 0.obs;

  @override
  void onInit() {
    print('onInit called');
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
