import 'package:get/get.dart';

class CounterStatefulBuilderController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }

  void decrement() {
    count--;
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
