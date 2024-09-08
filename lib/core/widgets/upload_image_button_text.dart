import 'package:flutter/material.dart';

class UploadImageButtonText extends StatelessWidget {
  const UploadImageButtonText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
