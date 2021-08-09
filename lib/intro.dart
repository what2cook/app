import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffe43630),
      alignment: Alignment.center,
      child: SvgPicture.asset('assets/images/logo_white.svg'),
    );
  }
}
