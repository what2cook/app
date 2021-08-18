import 'package:flutter/material.dart';

import 'package:what2cook/constants/theme.dart';
import 'package:what2cook/components/atoms/add_icon.dart';

class SmallAddButton extends StatelessWidget {

  final Function() _onTap;

  SmallAddButton(this._onTap);

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
        child: AddIcon(),
      ),
    );
  }
}