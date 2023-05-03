import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo.png",
      fit: BoxFit.fitWidth,
    );
  }
}
