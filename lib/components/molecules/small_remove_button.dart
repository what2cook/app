import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/remove_icon.dart';

class SmallRemoveButton extends StatelessWidget {

  final Function() _onTap;

  SmallRemoveButton(this._onTap);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: W2CColor.red,
        shape: BoxShape.circle,
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