import 'package:flutter/material.dart';

class UploadImageNoticeText extends StatelessWidget {
  const UploadImageNoticeText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.redAccent,
      ),
    );
  }
}
