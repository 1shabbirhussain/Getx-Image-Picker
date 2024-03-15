import 'package:get/get.dart';
import 'package:getx_mvc/core/services/timer_service.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(TimerService()); // Initialize ProductService
  }
}
