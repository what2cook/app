import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/remove_icon.dart';

class RemoveButton extends StatelessWidget {
  final Function() _onTap;

  RemoveButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: W2CColor.red,
        shape: BoxShape.circle,
        boxShadow: [W2CShadow.big],
      ),
      child: InkWell(
        onTap: () {
          _onTap();
        },
        child: RemoveIcon(),
      ),
    );
  }
}
