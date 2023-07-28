import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraUtils {
  static Future<File?> showImageSelectBottomSheet(BuildContext context) async {
    try {
      final ImageSource? source = await showModalBottomSheet<ImageSource?>(
        context: context,
        builder: (context) {
          return SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  leading: const Icon(Icons.camera_alt),
                  title: const Text('Fotoğraf Çek'),
                  onTap: () {
                    Navigator.pop(context, ImageSource.camera);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo),
                  title: const Text('Galeriden Seç'),
                  onTap: () {
                    Navigator.pop(context, ImageSource.gallery);
                  },
                ),
              ],
            ),
          );
        },
      );

      if (source == null) return null;

      final imagePicker = ImagePicker();
      final pickedImage = await imagePicker.pickImage(source: source);

      if (pickedImage != null) {
        return File(pickedImage.path);
      } else {
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
