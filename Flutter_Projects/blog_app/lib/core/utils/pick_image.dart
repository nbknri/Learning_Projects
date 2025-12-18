import 'dart:io';

import 'package:blog_app/core/utils/permission_helper.dart';
import 'package:image_picker/image_picker.dart';

Future<File?> pickImage() async {
  try {
    bool hasPermission = await PermissionHelper.askStoragePermission();
    if(hasPermission){
    final xFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (xFile != null) {
      return File(xFile.path);
      }
    }
    return null;
  } catch (e) {
    return null;
  }
}
