import 'dart:async';

import 'package:get/get.dart';

class TimerService extends GetxService {
  late Timer _timer;
  
  @override
  void onInit() {
    print("I am Service");
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      print("I am service after 5 secs"); //   every 5 seconds
    });
    super.onInit();
  }

  
}
