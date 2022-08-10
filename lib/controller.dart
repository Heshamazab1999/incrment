import 'package:get/get.dart';

class Controller extends GetxController {
  final _counter = 0.obs;

  int get counter => _counter.value;

  void increment() => _counter.value++;

  void decrement() => _counter.value--;
}