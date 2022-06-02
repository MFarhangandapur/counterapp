import 'package:get/get.dart';

class Controller extends GetxController {
  RxInt count = 0.obs;
  increment() => count++;
  decrement() => count--;
  restore() => count = 0.obs;
}
