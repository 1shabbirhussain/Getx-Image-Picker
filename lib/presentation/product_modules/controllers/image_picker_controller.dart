import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{

  RxString imageGalleryPath = "".obs;
  RxString imageCameraPath = "".obs;
  Future getGalleryImage()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.gallery );
    if(image != null){
      imageGalleryPath.value = image.path.toString();
    }
    }
    Future getcameraImage()async{
    final ImagePicker _picker = ImagePicker();
    final image = await _picker.pickImage(source: ImageSource.camera );
    if(image != null){
      imageCameraPath.value = image.path.toString();
    }
    }

}