import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String url;

  ImageBox(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      child: Image.network(
        url,
        fit: BoxFit.contain,
      ),
    );
  }
}
