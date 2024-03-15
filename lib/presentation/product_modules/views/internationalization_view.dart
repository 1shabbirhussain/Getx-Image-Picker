
import 'dart:io'; 
import 'package:getx_mvc/presentation/product_modules/controllers/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagePickerView extends StatelessWidget {
  const ImagePickerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImagePickerController controller = Get.put(ImagePickerController());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker Getx"),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: controller.imageGalleryPath.isNotEmpty?
                FileImage(File(controller.imageGalleryPath.toString())):
                null
              ),
              CircleAvatar(
                radius: 32,
                backgroundImage: controller.imageCameraPath.isNotEmpty?
                FileImage(File(controller.imageCameraPath.toString())):
                null
              ),
              ElevatedButton(
                  onPressed: () => controller.getGalleryImage(),
                  child: const Text("Gallery")),
              ElevatedButton(
                  onPressed: () => controller.getcameraImage(),
                  child: const Text("Camera")),
            ],
          ),
        ),
      ),
    ));
  }
}
