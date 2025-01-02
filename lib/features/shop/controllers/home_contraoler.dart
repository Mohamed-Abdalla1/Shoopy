import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carouselCurrentController = 0.obs;

  void updatePageIndicator(index) {
    carouselCurrentController.value = index;
  }
}
