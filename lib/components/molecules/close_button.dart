import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/close_icon.dart';

class CloseButton extends StatelessWidget {
  final Function() _onTap;

  CloseButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: W2CColor.red,
        shape: BoxShape.circle,
        boxShadow: [W2CShadow.small],
      ),
      child: InkWell(
        onTap: () {
          _onTap();
        },
        child: CloseIcon(),
      ),
    );
  }
}
