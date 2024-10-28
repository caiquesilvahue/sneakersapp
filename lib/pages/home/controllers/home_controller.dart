import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  RxInt selectedIndex = 1.obs;

  void onItemTapped(value) {
    selectedIndex.value = value;
    update();
  }

  @override
  // ignore: unnecessary_overrides
  void onInit() {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  @override
  // ignore: unnecessary_overrides
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
