import 'package:getx_mvc/presentation/product_modules/views/internationalization_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/bindings/bindings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Getx Image Picker",
      debugShowCheckedModeBanner: false,
      home: ImagePickerView(),
    );
  }
}
