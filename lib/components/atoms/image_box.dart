import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {

  final String url;

  ImageBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Image.network(url),
    );
  }
}