import 'package:flutter/material.dart';

class PaddedImage extends StatelessWidget {
  const PaddedImage(this.imageFilename, {Key? key}) : super(key: key);

  final String imageFilename;

  @override
  Widget build(BuildContext context) {
    return Image(image: AssetImage(imageFilename));
  }
}
