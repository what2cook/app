import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/red_logo.dart';
import 'package:what2cook/components/atoms/back_icon.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      child: RedLogo(),
    );
  }
}
