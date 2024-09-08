import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../core/theme/colors.dart';

class OfferImagePicker extends StatefulWidget {
  const OfferImagePicker(
      {super.key, required this.buttonText, required this.noticeText});

  final Widget buttonText;
  final Widget noticeText;

  @override
  State<OfferImagePicker> createState() => _OfferImagePickerState();
}

class _OfferImagePickerState extends State<OfferImagePicker> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile>? selectedImages = [];

  Future<void> pickMultipleImages() async {
    if (kIsWeb) {
      // Web platform
      final List<XFile> returnedImages = await imagePicker.pickMultiImage();
      if (returnedImages.isNotEmpty) {
        setState(() {
          selectedImages!.addAll(returnedImages);
        });
      }
    } else {
      // Mobile platform
      var storageStatus = await Permission.storage.status;
      if (storageStatus.isDenied) {
        await Permission.storage.request();
      } else if (storageStatus.isGranted) {
        final List<XFile> returnedImages = await imagePicker.pickMultiImage();
        if (returnedImages.isNotEmpty) {
          setState(() {
            selectedImages!.addAll(returnedImages);
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 60.h,
            width: 80.w,
            child: MaterialButton(
              shape: const StadiumBorder(),
              color: MyColors.myYellow,
              textColor: Colors.black87,
              padding: const EdgeInsets.all(20),
              onPressed: pickMultipleImages,
              child: widget.buttonText,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          selectedImages != null
              ? SizedBox(
                  height: 100.h,
                  width: 50.w,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: selectedImages!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return kIsWeb
                          ? Image.network(
                              selectedImages![index].path,
                              fit: BoxFit.cover,
                            )
                          : Image.file(
                              File(selectedImages![index].path),
                              fit: BoxFit.cover,
                            );
                    },
                  ),
                )
              : widget.noticeText,
        ],
      ),
    );
  }
}
