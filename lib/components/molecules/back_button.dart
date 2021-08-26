import 'package:flutter/material.dart';

import 'package:what2cook/components/atoms/back_icon.dart';

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: BackIcon(),
      ),
    );
  }
}
