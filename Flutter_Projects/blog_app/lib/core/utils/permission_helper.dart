import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHelper {
  static Future<bool> askStoragePermission() async {
    try {
      PermissionStatus status;

      if (Platform.isAndroid) {
        final deviceInfo = DeviceInfoPlugin();
        final androidInfo = await deviceInfo.androidInfo;

        if (androidInfo.version.sdkInt >= 33) {
          // For android version 13 and above
          status = status = await Permission.photos.request();
        } else {
          // For old android version
          status = await Permission.storage.request();
        }
      } else {
        // For iOS
        status = await Permission.photos.request();
      }

      if (status.isGranted) {
        return true;
      } else {
        if (status.isPermanentlyDenied) {
          openAppSettings();
        }
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
